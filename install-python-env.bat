@echo off
rem this test is courtesy of https://stackoverflow.com/questions/4781772/how-to-test-if-an-executable-exists-in-the-path-from-a-windows-batch-file/25696405#25696405

where /q choco

IF ERRORLEVEL 1 (
    ECHO Choco not found. Please make sure it is installed and placed in your PATH.
    EXIT /B
)

echo Installing linux commandline tools (grep/cat/etc)
choco install cygwin

echo Installing git code versioning...
choco install git

echo Installing Python 3...
choco install python

echo Installing Sublime Text editor...
choco install sublimetext3
