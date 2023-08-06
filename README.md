# Chat21 Application Testing with Robot Framework

### Overview

This repository contains test scripts and resources for testing the Chat21 application using Robot Framework. The purpose of these tests is to ensure the functionality, reliability, and performance of the Chat21 application across various scenarios.

## Setup
Install dependecies

```
py requirements.py
```
## Usage
* Run tests

```
robot -d Output -i 001 -v ENV:TARAS Tests\Login.robot
```
Where :
* `-i 001` - Run tests with tag "001"
* `-v ENV:TARAS` - Name of the ENV file "MAIN"
* `Tests\Login.robot` - Name of the folder where all tests are located

If you want to run all tests use:
```
robot -d Output -i run_all -v ENV:TARAS Tests\Login.robot
```

## Test Reports

After the test execution, Robot Framework will generate test reports in both HTML and XML formats. The reports can be found in the 'Output' directory.
