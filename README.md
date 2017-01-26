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

### Run tests for [ng2-app](https://github.com/jojanper/ng2-app)
```
clone https://github.com/jojanper/ng2-app and start application
robot e2e_tests/ng2_app
```
