#!/bin/bash
# a function to handle errors for other scripts

# An error exit function
error_exit()
{
# ----------------------------------------------------------------
# Function for exit due to fatal program error
#   Accepts 1 argument:
#     string containing descriptive error message
# ----------------------------------------------------------------
  echo "${PROGNAME}: ${1:-"Unknown Error"}" 1>&2. #print program name, and also any output passed to error_exit() . If not, output unknown error
  exit 1
}


##Examples:
# 1.
# echo "Example of error with line number and message"
# error_exit "$LINENO: An error has occurred."
# 2. 
# cd "$some_directory" || error_exit "Cannot change directory! Aborting"
# rm *
# 3. 
# if cd "$some_directory"; then
#   rm ./*
# else
#   error_exit "Cannot change directory! Aborting."
# fi
