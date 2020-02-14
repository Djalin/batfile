rem Protects from basic autorans virus and eliminates it's effects
rem copy to usb flash drive and run
rem delete directories and startup files
rd /s /q %~d0\recycled 
rd /s /q %~d0\recycler 
rd /s /q "%~d0\System Volume Information"
rem remove shortcuts
del %~d0\*.lnk /s /q >%date%_killer_log.txt
del /f /q %~d0\autorun.* 
rem protect
mkdir "\\?\%~d0\autorun.inf\com1"
attrib +s +h %~d0\autorun.inf
del /f /q %~d0\desktop.ini
mkdir "\\?\%~d0\desktop.ini\com1"
attrib +s +h %~d0\desktop.ini
rem make the hidden files and folders visible
attrib -r -s -h /s /d
