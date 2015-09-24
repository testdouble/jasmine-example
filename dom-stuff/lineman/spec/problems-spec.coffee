describe '.createApplication', ->
  Given -> spyOn(JST, 'app/templates/problems.us').andReturn("<foo/>")
  Given -> @$main = affix('.main')
  Given -> createApplication()

  Then -> @$main.find('foo').length == 1

  describe 'handling clicks', ->
    Given -> spyOn($, 'get')
    Given -> @captor = jasmine.captor()
    Given -> @$button = @$main.affix('button.new-problem')
    Given -> @$button.trigger('click')
    Given -> expect($.get).toHaveBeenCalledWith('/problem', @captor.capture())

    describe '~ajax callback for new problems', ->
      Given -> @$latestProblem = @$main.affix('.latest-problem')
      Given -> @problem = {description: "something"}
      Given -> @callback = @captor.value
      When -> @callback(@problem)
      Then -> @$latestProblem.text() == "something"
