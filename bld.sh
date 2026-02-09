#!/bin/bash
set +e

# Save current directory
DIRECTORY_PATH="$(pwd)"
cd bin

# Link COBOL source
cob64 -x "${DIRECTORY_PATH}/src/cobol/GenerateParseDemo.cbl"

# Remove object files
rm -f *.o *.idy *.int

echo "Build complete."
