#! /usr/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 \"Your commit message\""
    exit 1
fi

COMMIT_MESSAGE="$1"

git add .
git commit -m "$COMMIT_MESSAGE"
git push
echo "Changes pushed to GitHub successfully!"

