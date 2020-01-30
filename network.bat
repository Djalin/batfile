rem save old configuration
echo old configuration >ip_%COMPUTERNAME%_%USERNAME%_log.txt
ipconfig /all >>ip_%COMPUTERNAME%_%USERNAME%_log.txt
rem clean dns cache
ipconfig /flushdns
rem refresh network settings
netsh winsock reset
rem clean hosts file
echo 127.0.0.1	localhost >%windir%\System32\drivers\etc\hosts
rem save new configuration
echo new configuration >>ip_%COMPUTERNAME%_%USERNAME%_log.txt
ipconfig /all >>ip_%COMPUTERNAME%_%USERNAME%_log.txt
rem test ping
ping google.com >>ip_%COMPUTERNAME%_%USERNAME%_log.txt
ping 8.8.8.8 >>ip_%COMPUTERNAME%_%USERNAME%_log.txt
rem test tracert
tracert 8.8.8.8 >>ip_%COMPUTERNAME%_%USERNAME%_log.txt
