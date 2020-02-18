rem add users
rem run as administrator, replace the password as needed, replace the Administrators as needed
net user user /add
net user admin password /add
rem locale EN
net localgroup Administrators admin /add
rem locale RU
rem net localgroup Администраторы admin /add
net accounts /maxpwage:unlimited
EXIT
