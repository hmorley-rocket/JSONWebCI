#!/bin/bash
set +e

# Save current directory
DIRECTORY_PATH="$(pwd)"
cd bin

# Link COBOL source
cob64 -x "${DIRECTORY_PATH}/src/cobol/GenerateParseDemo.cbl"

# Remove object files
rm -f *.o *.idy *.int

mkdir -p "JSONWebContainer/src"

cp -r "../src/web/${*}" "JSONWebContainer/src"
cp "../package.json" "JSONWebContainer"
cp "../package-lock.json" "JSONWebContainer"
cp "GenerateParseDemo" "JSONWebContainer"

tar czf "JSONWebContainer.tar.gz" "JSONWebContainer"
rm -r "JSONWebContainer" 

echo "Build complete."
