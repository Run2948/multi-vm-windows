::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCuDJGmW+0UiKRZoQhKPAGW1ArAW+6by7OXn
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
::ZQ05rAF9IAHYFVzEqQI+PhYUHUrScjva
::eg0/rx1wNQPfEVWB+kM9LVsJDAqUMSW/HrB8
::fBEirQZwNQPfEVWB+kM9LVsJDAqUMQs=
::cRolqwZ3JBvQF1fEqQI+PhYUHUrScjv6TuNIpery+6Pn
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
::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCuDJGmW+0UiKRZoSxKPAG27ELwf5+a15umIwg==
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
::ZQ05rAF9IAHYFVzEqQI3PhYUHUrScjva
::eg0/rx1wNQPfEVWB+kM9LVsJDAOUMSW/HrB8
::fBEirQZwNQPfEVWB+kM9LVsJDAOUMQs=
::cRolqwZ3JBvQF1fEqQI3PhYUHUrScjv6TuZOpery+6Pn
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
:: https://nodejs.org/zh-cn/download/
@echo off
set PATH=%PATH%;D:\Program Files\7-Zip
::echo %PATH%
set default=14.7.0
node -v
set /p v=���������밲װ�� Node �汾(Ĭ��Ϊ v%default%): 
if "" == "%v%" (set v=%default%)
@echo %cd%
@echo %v%
if not exist %cd%\v%v% (
    @echo �� nvm �б����Ҳ��������ڰ�װ...
	rem if not exist %cd%\node-v%v%-x64.msi (
	if not exist %cd%\node-v%v%-win-x64.zip (
	   @echo �� nvm �б����Ҳ�������������...
	   rem cscript download.vbs https://nodejs.org/dist/node-v%v%-x64.msi %cd%\node-v%v%-x64.msi
	   cscript download.vbs https://nodejs.org/dist/node-v%v%-win-x64.zip %cd%\node-v%v%-win-x64.zip
	   @echo ������ɣ����ڰ�װ...
	)
	rem msiexec /a %cd%\node-v%v%-x64.msi /quiet TARGETDIR="%cd%\v%v%" /qn	
	7z x -ov%v% node-v%v%-win-x64.zip
) else (
  @echo �Ѵ��� nvm �б������л�...
)
rd "D:\Program\nodejs"
mklink /d "D:\Program\nodejs" %cd%\v%v%
pause