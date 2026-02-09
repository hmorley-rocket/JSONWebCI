set DIRECTORY_PATH=%CD%
cd test

cobol %DIRECTORY_PATH%\src\cobol\GenerateParseDemo.cbl omf(obj) use"../test_directives.dir" endp;
cbllink -D %DIRECTORY_PATH%\src\cobol\GenerateParseDemo.obj 
if errorlevel 1 goto theend
del %DIRECTORY_PATH%\src\cobol\GenerateParseDemo.obj

mfurun GenerateParseDemo.dll
del GenerateParseDemo.dll

:theend