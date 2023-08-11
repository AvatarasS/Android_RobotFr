# Testing with Robot Framework

### Overview

This repository contains test scripts and resources for UI, API and Mobile (Android) testing using Robot Framework.

## Setup
Install dependecies

```
py instal_requirements.py
```
## Usage
* Run tests

```
robot -d Output -i 01_001 -v ENV:TARAS Tests\Login.robot
```
Where :
* `-i 001` - Run tests with tag "001"
* `-v ENV:TARAS` - Name of the ENV file "MAIN"
* `Tests` - Name of the folder where all tests are located

If you want to run all tests use:
```
robot -d Output -i run_all -v ENV:TARAS Tests
```

## Test Reports

After the test execution, Robot Framework will generate test reports in both HTML and XML formats. The reports can be found in the 'Output' directory.
