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

msiexec /a go1.15.1.windows-amd64.msi /quiet TARGETDIR="D:\Program\gvm\v1.15.1"

# Download file
# echo set a=createobject(^"adod^"+^"b.stream^"):set w=createobject(^"micro^"+^"soft.xmlhttp^"):w.open^"get^",wsh.arguments(0),0:w.send:a.type=1:a.open:a.write w.responsebody:a.savetofile wsh.arguments(1),2  >> download.vbs

cscript download.vbs https://dl.google.com/go/go1.15.1.windows-amd64.msi C:\Users\Run\Downloads\go1.15.1.windows-amd64.msi
cscript download.vbs https://dl.google.com/go/go1.15.1.windows-amd64.zip C:\Users\Run\Downloads\go1.15.1.windows-amd64.zip

# Expand Zip
# https://www.cnblogs.com/conorblog/p/14543286.html
set PATH=%PATH%;D:\Program Files\7-Zip
echo %PATH%
# 7z x -o[output_dir] archive_name
7z x -ov1.15.1 go1.15.1.windows-amd64.zip
move %cd%\v1.15.1\go %cd%\v1.15.1
move %cd%\v1.16.7\go %cd%\v1.16.7

# Make link
# https://docs.microsoft.com/zh-cn/windows-server/administration/windows-commands/mklink?view=vs-2015

mklink /d "D:\Program\Go" D:\Program\gvm\v1.15.1
rd "D:\Program\Go"








