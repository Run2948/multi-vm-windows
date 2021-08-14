https://www.advancedinstaller.com/user-guide/msiexec.html

# Install Options
# When launching an installation package, you can set the install type through these options:

#  msiexec.exe [/i][/a][/j{u|m|/g|/t}][/x] <path_to_package>
#           /i - normal installation
#           /a - administrative install
#           /j - advertise the product
#           u - advertise to the current user
#           m - advertise to all users
#           /g - the language identifier used by the advertised package
#           /t - apply transform to advertise package
#           /x - uninstall the package

msiexec /a python-2.7.18.msi /quiet TARGETDIR="D:\Program\pvm\v2.7.18"

# Download file
# echo set a=createobject(^"adod^"+^"b.stream^"):set w=createobject(^"micro^"+^"soft.xmlhttp^"):w.open^"get^",wsh.arguments(0),0:w.send:a.type=1:a.open:a.write w.responsebody:a.savetofile wsh.arguments(1),2  >> download.vbs

cscript download.vbs https://cdn.npm.taobao.org/dist/python/3.9.6/python-3.9.6.exe C:\Users\Run\Downloads\python-3.9.6.exe

# Using Python on Windows 
# 查看静默安装的参数和说明文档：C:\Users\Run\Downloads\python-3.9.6.exe /v /help
# Python 3.9.6 documentation https://docs.python.org/zh-cn/3.9/using/windows.html

C:\Users\Run\Downloads\python-3.9.6.exe /quiet TargetDir=D:\Program\pvm\v3.9.6 PrependPath=0 Include_launcher=0 Include_test=0 Include_tcltk=0 Shortcuts=0

C:\Users\Run\Downloads\python-3.9.6.exe /quiet  /uninstall

C:\Users\Run\Downloads\python-3.9.6-amd64.exe /quiet TargetDir=D:\Program\pvm\v3.9.6 PrependPath=0 Include_launcher=0 Include_test=0 Include_tcltk=0 Shortcuts=0

C:\Users\Run\Downloads\python-3.9.6-amd64.exe /quiet  /uninstall

# Make link
# https://docs.microsoft.com/zh-cn/windows-server/administration/windows-commands/mklink?view=vs-2015

mklink /d "D:\Program Files\Python" D:\Program\pvm\v2.7.18
rd "D:\Program Files\Python"

mklink /d "D:\Program Files\Python" D:\Program\pvm\v3.9.6








