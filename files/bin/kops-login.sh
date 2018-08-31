#!/bin/bash

echo "You must source this script in order to use the new environment in your shell!"
echo "Example: . $0"

export AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID_KOPS}
export AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY_KOPS}

echo "Now using Kops AWS credentials..."
