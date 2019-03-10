@ECHO OFF

REM Change directory
cd .\UZT_Disp_Lamb01_TVD\

REM Generate FTL file using MODFLOW-NWT ver 1.1.4 (or greater)
..\..\bin\MF_NWT_1.1.4_64.exe  uzt_Lamb01_TVD_mf.nam

REM Run MT3D-USGS only after FTL is generated
..\..\bin\MT3D-USGS_64_1.0.1.exe  uzt_Lamb01_TVD_mt.nam

ECHO.
ECHO Run complete. Please press enter when you want to continue.
PAUSE>NUL