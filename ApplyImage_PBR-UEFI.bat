rem These commands use the specified windows image file
rem to deploy windows, system and recovery tools
rem to a UEFI-based computer.

rem Usage:    ApplyImage wimFileName
rem Example: ApplyImage U:\xxx.wim

rem === Apply the image to the windows partition ===
dism /Apply-Image /ImageFile:%1 /Index:1 /ApplyDir:W:\

rem === Copy boot files to the system partition ===
W:\Windows\System32\bcdboot W:\Windows /s R:

exit
