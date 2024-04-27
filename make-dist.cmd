@echo off
echo.
echo .:. Compile for the Production Environment .:.
echo -----------------------------------------------
echo.

cd /d %~dp0
npm run make-dist
