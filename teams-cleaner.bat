@ECHO OFF
::Copyright: License is GNU AGPLv3
::Hosted at: https://github.com/LarsBoosBechtle/TeamsCleaner/
::Contributor: Lars Boos
::Company: Bechtle GmbH & Co. KG IT-Systemhaus Bonn/Köln
::E-Mail: lars.boos@bechtle.com
for /f "tokens=1-10 Delims=:=" %%A in ('cmdkey /list ^| findstr /i MicrosoftOffice') do @cmdkey /delete:%%D:%%E:%%F
for /f "tokens=1-10 Delims=:=" %%A in ('cmdkey /list ^| findstr /i teams') do @cmdkey /delete:%%D
for /f "tokens=1-10 Delims=:=" %%A in ('cmdkey /list ^| findstr /i msteams') do @cmdkey /delete:%%D
del /S /F /Q "%APPDATA%\Microsoft\Teams"
