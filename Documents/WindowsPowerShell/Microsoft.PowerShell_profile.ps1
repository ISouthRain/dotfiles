$Env:http_proxy="http://127.0.0.1:7890";$Env:https_proxy="http://127.0.0.1:7890"
#$Env:http_proxy="http://127.0.0.1:10809";$Env:https_proxy="http://127.0.0.1:10809"
$Env:path=$Env:Path+";F:\Powershellapplicons\aria2-1.35.0-win-64bit-build1"
$Env:path=$Env:Path+";F:\Powershellapplicons\emacs-27.2-x86_64\bin"
#$Env:path=$Env:Path+";F:\Powershellapplicons\emacs-29_snapshot-20221013\bin"
$Env:path=$Env:Path+";F:\Powershellapplicons\ffmpeg\bin"
$Env:path=$Env:Path+";F:\Powershellapplicons\Neovim\bin"
$Env:path=$Env:Path+";F:\Powershellapplicons\PortableGit\bin"
$Env:path=$Env:Path+";F:\Powershellapplicons\scrcpy-win64-v1.19"
$Env:path=$Env:Path+";F:\Powershellapplicons\sdcc\bin"
$Env:path=$Env:Path+";F:\Powershellapplicons\Vim\vim82"
$Env:path=$Env:Path+";F:\Powershellapplicons\winlibs-x86_64-posix-seh-gcc-11.1.0-llvm-12.0.0-mingw-w64-8.0.2-r1\mingw64\bin"
#$Env:path=$Env:Path+";F:\Powershellapplicons\winlibs-x86_64-posix-seh-gcc-12.1.0-llvm-14.0.4-mingw-w64ucrt-10.0.0-r2\mingw64\bin"
$Env:path=$Env:Path+";F:\Powershellapplicons\xmrig-6.12.2-gcc-win64\xmrig-6.12.2"
$Env:path=$Env:Path+";F:\Powershellapplicons\hugo"
$Env:path=$Env:Path+";F:\Powershellapplicons\go1.18.1\bin"
$Env:path=$Env:Path+";F:\Powershellapplicons\mpg123-1.29.3-x86-64"
$Env:path=$Env:Path+";F:\Powershellapplicons\mpv-x86_64-20220605-git-ec236f7"
$Env:path=$Env:Path+";F:\Powershellapplicons\MPlayer"
$Env:path=$Env:Path+";F:\Powershellapplicons\dvisvgm-2.13.4-win64"
$Env:path=$Env:Path+";F:\Powershellapplicons\fd-v8.4.0-x86_64-pc-windows-gnu"
$Env:path=$Env:Path+";F:\Powershellapplicons\ripgrep-13.0.0-x86_64-pc-windows-gnu"
$Env:path=$Env:Path+";F:\Powershellapplicons\node-v14.18.1-win-x64"
$Env:path=$Env:Path+";F:\Powershellapplicons"
$Env:path=$Env:Path+";C:\Users\Jack\AppData\Roaming\.emacs.d\bin"
$Env:path=$Env:Path+";F:\Powershellapplicons\Aliyundrive-webdav"
$Env:path=$Env:Path+";F:\Powershellapplicons\rclone-v1.59.2"
$Env:path=$Env:Path+";F:\Powershellapplicons\aliyunpan-v0.2.2-windows-x64"
$Env:path=$Env:Path+";F:\Powershellapplicons\Python"
$Env:path=$Env:Path+";F:\Powershellapplicons\sqlite3"
$Env:path=$Env:Path+";C:\Users\Jack\.cargo\bin"
$Env:path=$Env:Path+";F:\Powershellapplicons\chezmoi_2.27.1_windows_amd64"



Import-Module posh-git
Import-Module oh-my-posh
Set-PoshPrompt -Theme remk
Set-PSReadlineKeyHandler -Key Tab -Function Complete
Set-PSReadLineKeyHandler -Key "Ctrl+d" -Function MenuComplete
Set-PSReadLineKeyHandler -Key "Ctrl+z" -Function Undo
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

