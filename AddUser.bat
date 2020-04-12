rem add users readme comand to https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2012-r2-and-2012/cc771865(v=ws.11)
rem run as administrator, replace the password as needed, replace the Administrators as needed
net user user /add
net user admin password /add
rem locale EN
net localgroup Administrators admin /add
rem locale RU
rem net localgroup Администраторы admin /add
net accounts /maxpwage:unlimited
EXIT
