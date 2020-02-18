rem add users
rem run as administrator, replace the password as needed, replace the Administrators as needed
net user user /add
net user admin password /add
net localgroup Administrators admin /add
net localgroup Users admin /delete
net accounts /maxpwage:unlimited
EXIT
