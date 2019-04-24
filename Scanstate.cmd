cd d:\USMT\APPS
adksetup /quiet /layout c:\temp\ADKoffline
adksetup.exe /quiet /installpath c:\ADK /features OptionId.DeploymentTools

CD D:\USMT\amd64
scanstate D:\USMTMIG\migration\user1store /i:migapp.xml /i:miguser.xml /v:4 /encrypt /key:"vistamigratel"
