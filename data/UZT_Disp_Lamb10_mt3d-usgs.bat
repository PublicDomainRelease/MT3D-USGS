@ECHO OFF

REM Change directory
cd .\UZT_Disp_Lamb10\

REM Generate FTL file using MODFLOW-NWT ver 1.1.0 (or greater)
..\..\bin\MF_NWT_1.1.1_64.exe  uzt_Lamb10_mf.nam

REM Run MT3D-USGS only after FTL is generated
..\..\bin\MT3D-USGS_64.exe  uzt_Lamb10_mt.nam

ECHO.
ECHO Run complete. Please press enter when you want to continue.
PAUSE>NUL