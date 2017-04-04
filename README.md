[![Build Status](https://travis-ci.org/jojanper/robot_tests.svg?branch=master)](https://travis-ci.org/jojanper/robot_tests)

# robot_tests

> Automation tests using [Robot Framework](http://robotframework.org/).

## Usage

### Install dependencies
```
npm install
npm run setup
source virtualenv/robot/bin/activate
```

This installs NPM, virtualenv and library (both npm and python) dependencies.

### Run tests for [angular-app](https://github.com/jojanper/angular-app)
```
clone https://github.com/jojanper/angular-app and start application
robot e2e_tests/ng2_app
```

### Travis CI
https://travis-ci.org/jojanper/robot_tests
