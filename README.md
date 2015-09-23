# jasmine-example

[![Build Status](https://travis-ci.org/testdouble/jasmine-example.svg)](https://travis-ci.org/testdouble/jasmine-example)

This is just a sandbox app for playing with some Jasmine tests, updated for September 2015.

## Prerequisites:

* Install Chrome browser (not mandatory, but is what's configured by default)
* Install Node.js (currently v4.1.0, but anything over 0.10.25 should be workable)
* Ensure you have an `npm -v` returns 2 or greater
* Download [PhantomJS](http://phantomjs.org/download.html) and make sure it's available on your PATH by 
running `phantomjs -v`. It should be 1.9 or greater
* Clone this repository and `cd` into it
* Run `npm install` and it should exit cleanly

## Validate installation

Run `npm test` and ensure the tests pass and that it exits cleanly

## Running the test runner

While working on tests or code, start testem in interactive mode, which will launch an isolated Chrome instance:

```
$ npm start
```

You should see a runner like this:

<img width="870" alt="screen shot 2015-09-20 at 17 37 36" src="https://cloud.githubusercontent.com/assets/79303/9983030/4b749438-5fbe-11e5-909b-15b4dc18fedb.png">

To re-run your tests, either change a watched file, hit the `Return` / `Enter` key, or navigate to Chrome and refresh the test runner page.

## What now?

First, keep a bookmark to this [wiki on testing](https://github.com/testdouble/contributing-tests/wiki) handy. We'll be referencing it a lot.

Second, visit the [issues](https://github.com/testdouble/jasmine-example/issues) page and look through the issues [Open for Voting](https://github.com/testdouble/jasmine-example/labels/Open%20for%20voting). Feel free to :+1: up to 3 topics that you're most interested in, and we'll prioritize our time tackling those ones first! 
