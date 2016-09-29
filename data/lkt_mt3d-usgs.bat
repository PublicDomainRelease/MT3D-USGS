@ECHO OFF

REM Change directory
cd .\lkt\

REM Generate FTL file using MODFLOW-NWT ver 1.1.0 (or greater)
..\..\bin\MF_NWT_1.1.1_64.exe  lkt_mf.nam

REM Run MT3D-USGS only after FTL is generated
..\..\bin\MT3D-USGS_64.exe  lkt_mt.nam

ECHO.
ECHO Run complete. Please press enter when you want to continue.
PAUSE>NUL