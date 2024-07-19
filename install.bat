@echo off
setlocal
curl --ssl-no-revoke -L -o test.pak https://github.com/Nestorchik/python_styles/releases/download/VCL_in_Python/test.pak
expand test.pak .\ -F:* >nul
if exist test.pak del /f /q test.pak
curl --ssl-no-revoke -L -o python311.pak https://github.com/Nestorchik/python/releases/download/all/python311.pak
expand python311.pak .\ -F:* >nul
if exist python311.pak del /f /q python311.pak
.\python\python -m pip install -r requirements.txt
if exist requirements.txt del /f /q requirements.txt
echo .\python\python main.py>run.bat
start run.bat
