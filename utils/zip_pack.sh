#!/bin/bash

# Get the full path of the script, resolving symbolic links
SCRIPT_PATH=$(readlink -f "$0")
# Get the directory of the script
SCRIPT_DIR=$(dirname "$SCRIPT_PATH")
# Move to the grandparent directory
cd "$SCRIPT_DIR/.."

# Determine the parent directory name
PARENT_DIR=$(basename "$(pwd)")

# Get the current Git branch name
BRANCH_NAME=$(git rev-parse --abbrev-ref HEAD)

# Check for uncommitted changes
if ! git diff-index --quiet HEAD --; then
    # There are uncommitted changes
    ARCHIVE_NAME="${PARENT_DIR} DEV-${BRANCH_NAME}"
else
    # There are no uncommitted changes
    # Check if the latest commit has a tag
    TAG_NAME=$(git describe --tags --exact-match 2>/dev/null)
    if [ -n "$TAG_NAME" ]; then
        # The latest commit has a tag
        ARCHIVE_NAME="${PARENT_DIR} ${TAG_NAME}"
    else
        # The latest commit does not have a tag
        COMMIT_HASH=$(git rev-parse --short HEAD)
        ARCHIVE_NAME="${PARENT_DIR} ${COMMIT_HASH}-${BRANCH_NAME}"
    fi
fi

# Create the archives directory if it doesn't exist
mkdir -p archives

# Delete preexisting archives of the same name.
[ -f "./archives/$ARCHIVE_NAME.zip" ] && rm "./archives/$ARCHIVE_NAME.zip"
[ -f "./archives/$ARCHIVE_NAME (resources).zip" ] && rm "./archives/$ARCHIVE_NAME (resources).zip"

# Create zip archives for datapack and resources directories
cd "./datapack"
zip -r "../archives/${ARCHIVE_NAME}.zip" *
cd "../resources"
zip -r "../archives/${ARCHIVE_NAME} (resources).zip" *

echo "Archives created in the 'archives' directory:"
echo " - archives/${ARCHIVE_NAME}.zip"
echo " - archives/${ARCHIVE_NAME} (resources).zip"
