set DIRECTORY_PATH=%CD%
cd bin
cbllink %DIRECTORY_PATH%\src\cobol\GenerateParseDemo.cbl
del *.obj