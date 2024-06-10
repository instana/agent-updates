#!/bin/bash

#
# IBM Confidential
# PID 5737-N85, 5900-AG5
# Copyright IBM Corp. 2022
#

# Get the commit date for the specified commit hash
COMMIT_DATE=$(git show --no-patch --pretty='format:%ci' HEAD)
# Format the date to YYYY.MM.DD.HHMM
GIT_TAG=$(date -u -d "$COMMIT_DATE" +'%Y.%m.%d.%H%M')
# Create a tag using the formatted date
git tag "${GIT_TAG}"
