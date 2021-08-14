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

msiexec /a node-v14.7.0-x64.msi /quiet TARGETDIR="D:\Program\nvm\v14.7.0"

# Download file
# echo set a=createobject(^"adod^"+^"b.stream^"):set w=createobject(^"micro^"+^"soft.xmlhttp^"):w.open^"get^",wsh.arguments(0),0:w.send:a.type=1:a.open:a.write w.responsebody:a.savetofile wsh.arguments(1),2  >> download.vbs

cscript download.vbs https://dl.google.com/go/node-v14.7.0-x64.msi C:\Users\Run\Downloads\node-v14.7.0-x64.msi
cscript download.vbs https://dl.google.com/go/node-v14.7.0-win-x64.zip C:\Users\Run\Downloads\node-v14.7.0-win-x64.zip

# Expand Zip
# https://www.cnblogs.com/conorblog/p/14543286.html
set PATH=%PATH%;D:\Program Files\7-Zip
echo %PATH%
# 7z x -o[output_dir] archive_name
7z x -ov14.7.0 node-v14.7.0-win-x64.zip

# Make link
# https://docs.microsoft.com/zh-cn/windows-server/administration/windows-commands/mklink?view=vs-2015

mklink /d "D:\Program\nodejs" D:\Program\nvm\v14.7.0
rd "D:\Program\nodejs"








