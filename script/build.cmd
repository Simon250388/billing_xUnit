@echo off
SET pr_folder=%cd:\script=\%
FOR /d %%r in (../src/*) do (
	FOR /d %%f IN (../src/%%r/*) do (
		FOR %%n IN (../src/%%r/%%f/*.xml) DO (			  
			start /wait /d "C:\Program Files (x86)\1cv8\8.3.15.1700\bin\" 1cv8.exe  "DESIGNER /LoadExternalDataProcessorOrReportFromFiles "%pr_folder%src\%%r\%%f\%%f.xml" "%pr_folder%bin\%%f.epf"			
		)	
	)
)