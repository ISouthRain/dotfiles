$Env:http_proxy="http://127.0.0.1:7890";$Env:https_proxy="http://127.0.0.1:7890"
$Env:path=$Env:Path+";F:\App\Scoop\apps\mingw-winlibs-llvm-ucrt\12.2.0-16.0.0-10.0.0-r5\bin"
$Env:path=$Env:Path+";C:\Users\Jack\AppData\Roaming\.emacs.d\bin"
$Env:path=$Env:Path+";F:\App\Python"
$Env:path=$Env:Path+";F:\App\sqlite3"
$Env:path=$Env:Path+";F:\App\BBDown_1.5.4_20221019_win-x64"
$Env:path=$Env:Path+";F:\App\Scoop\apps\gpg\2.4.1\bin"
$Env:path=$Env:Path+";F:\App\gcc-arm-none-eabi-10.3-2021.10\bin"

# 缩写


Import-Module posh-git
Import-Module oh-my-posh
Set-PoshPrompt -Theme remk
Set-PSReadlineKeyHandler -Key Tab -Function Complete
Set-PSReadLineKeyHandler -Key "Ctrl+d" -Function MenuComplete
Set-PSReadLineKeyHandler -Key "Ctrl+z" -Function Undo
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
