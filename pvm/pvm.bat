::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCuDJGmW+0UiKRZoXBKPAHujSLwf54g=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSTk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZksaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlTMbCXqZg==
::ZQ05rAF9IAHYFVzEqQIgPhYUHUrScjva
::eg0/rx1wNQPfEVWB+kM9LVsJDBSUMSW/HrB8
::fBEirQZwNQPfEVWB+kM9LVsJDBSUMQs=
::cRolqwZ3JBvQF1fEqQIgPhYUHUrScjv6TuNIpery+6Pn
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATE100gMQldSwyWfCO5T/Uu/eaptr7fwg==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCuDJGmW+0UiKRZoXBKPAHusC/sZ8O2b
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
:: http://npm.taobao.org/mirrors/python
@echo off
set default=2.7.18
set new=0
python --version
set /p v=请输入您想安装的Python版本(默认为 v%default%): 
if "" == "%v%" (set v=%default%)
::echo %v%|findstr "^3" >nul
::if %errorlevel% equ 0 (
::	set new=1
::)
if %v% GEQ 3.5.0 (
	set new=1
)
@echo %v%
if not exist %cd%\v%v% (
	@echo 在 pvm 列表中找不到，正在下载安装...
	if "1" == "%new%" (
		if not exist %cd%\python-%v%-amd64.exe (
			cscript download.vbs https://cdn.npm.taobao.org/dist/python/%v%/python-%v%-amd64.exe %cd%\python-%v%-amd64.exe
			@echo 下载完成，正在安装...
		)
		%cd%\python-%v%-amd64.exe /quiet TargetDir="%cd%\v%v%" PrependPath=0 Include_launcher=0 Include_test=0 Include_tcltk=0 Shortcuts=0
		rem if not exist %cd%\get-pip.py (
		rem   cscript download.vbs https://bootstrap.pypa.io/get-pip.py %cd%\get-pip.py
		rem )        
		rem python %cd%\get-pip.py
		rem python -m pip install --upgrade pip 
	) else (
		if not exist %cd%\python-%v%.amd64.msi (	
			cscript download.vbs https://cdn.npm.taobao.org/dist/python/%v%/python-%v%.amd64.msi %cd%\python-%v%.amd64.msi
			@echo 下载完成，正在安装...
		)
		msiexec /a %cd%\python-%v%.amd64.msi /quiet TARGETDIR="%cd%\v%v%"
		if not exist %cd%\get-pip-2.7.py (
			cscript download.vbs https://bootstrap.pypa.io/pip/2.7/get-pip.py %cd%\get-pip-2.7.py
		)
		python %cd%\get-pip-2.7.py
		rem python -m pip install --upgrade pip 
	)
) else (
	@echo 已存在 pvm 列表，正在切换...
)
rd "D:\Program\Python"
mklink /d "D:\Program\Python" "%cd%\v%v%"
pause