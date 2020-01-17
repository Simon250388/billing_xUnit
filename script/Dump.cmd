@echo off
SET fulldir=%1
SET fileName=%2
SET result=%fulldir:\bin\=\src\%\%fileName:.epf=\%
SET result=%result:"\"=\%
start /d "C:\Program Files (x86)\1cv8\8.3.15.1700\bin\" 1cv8.exe "DESIGNER /DumpExternalDataProcessorOrReportToFiles %result% %3"
