#!/usr/bin/env bash

set -e

# Define the path to the root of your Git repository.
ROOTDIR="/simple_shell"

# Output file for the AUTHORS list.
AUTHORS_FILE="${ROOTDIR}/AUTHORS"

# Ensure you are in the root directory of your Git repository.
cd "${ROOTDIR}" || exit 1

# Generate the AUTHORS file.
cat > "${AUTHORS_FILE}" <<- EOF
        # File generated by generate-authors.sh. DO NOT EDIT.
        # This file lists all contributors to the repository.

        $(git log --format='%aN <%aE>' | LC_ALL=C.UTF-8 sort -uf)
EOF
