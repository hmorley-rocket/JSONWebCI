#!/bin/bash
set +e

# Save current directory
DIRECTORY_PATH="$(pwd)"
cd test

# Compile COBOL source
cob64 -zUC "use(../test_directives.dir)" "${DIRECTORY_PATH}/src/cobol/GenerateParseDemo.cbl" 

# Run the program
cobmfurun -verbose GenerateParseDemo.so

# Remove the DLL
rm -f GenerateParseDemo.so GenerateParseDemo.o GenerateParseDemo.int GenerateParseDemo.idy
