_ = require('lodash')

module.exports = (set) ->
  _.first(_.shuffle(set))
