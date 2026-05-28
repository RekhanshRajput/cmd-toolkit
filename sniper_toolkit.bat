@echo off
setlocal EnableDelayedExpansion
chcp 437 >nul
title SNIPER CMD TOOL KIT ULTIMATE
mode con: cols=120 lines=40
color 0A

if not exist reports mkdir reports
if not exist logs mkdir logs

:: ================= STARTUP =================
cls
color 0B

echo.
echo ============================================================================================
echo.
echo                            SNIPER CMD TOOL KIT
echo.
echo ============================================================================================
echo.
echo                     SYSTEM ^| NETWORK ^| SECURITY ^| ADMIN
echo.
echo ============================================================================================
echo.

timeout /t 1 >nul
echo Loading Modules...
timeout /t 1 >nul
echo Starting Monitoring...
timeout /t 1 >nul
echo Toolkit Ready...
timeout /t 1 >nul

:: ================= MAIN =================
:MAIN
cls

for /f "skip=1" %%A in ('wmic cpu get loadpercentage') do (
set cpu=%%A
goto cpu_done
)
:cpu_done

ping google.com -n 1 >nul
if errorlevel 1 (
set net=OFFLINE
) else (
set net=ONLINE
)

color 0E
echo.
echo +======================================================================================================+
echo ^| USER : %USERNAME% ^| PC : %COMPUTERNAME% ^| CPU : !cpu!%% ^| NETWORK : !net! ^| TIME : %TIME% ^|
echo +======================================================================================================+
echo.

color 0A

echo +======================================================================================================+
echo ^| SYSTEM TOOLS                              ^| NETWORK TOOLS                                          ^|
echo +======================================================================================================+
echo ^| [1] System Info                           ^| [16] Network Info                                      ^|
echo ^| [2] CPU Monitor                           ^| [17] Public IP                                         ^|
echo ^| [3] RAM Info                              ^| [18] Ping Test                                         ^|
echo ^| [4] Disk Info                             ^| [19] Traceroute                                        ^|
echo ^| [5] GPU Info                              ^| [20] Open Ports                                        ^|
echo ^| [6] Uptime                                ^| [21] DNS Lookup                                        ^|
echo ^| [7] Drivers                               ^| [22] Header Viewer                                     ^|
echo ^| [8] Installed Apps                        ^| [23] Route Table                                       ^|
echo ^| [9] Battery Report                        ^| [24] WiFi Signal                                       ^|
echo ^| [10] Startup Apps                         ^| [25] MAC Address                                       ^|
echo ^| [11] BIOS Info                            ^| [26] Internet Monitor                                  ^|
echo ^| [12] Motherboard Info                     ^| [27] Connected Devices                                 ^|
echo ^| [13] Serial Number                        ^| [28] TCP Connections                                   ^|
echo ^| [14] Disk Health                          ^| [29] ARP Table                                         ^|
echo ^| [15] Installed Updates                    ^| [30] Speed Test                                        ^|
echo +======================================================================================================+
echo ^| SECURITY TOOLS                            ^| FILE TOOLS                                             ^|
echo +======================================================================================================+
echo ^| [31] Suspicious Scan                      ^| [41] Folder Size                                       ^|
echo ^| [32] Defender Status                      ^| [42] Large Files                                       ^|
echo ^| [33] Login History                        ^| [43] Temp Viewer                                       ^|
echo ^| [34] Firewall Status                      ^| [44] Hidden Files                                      ^|
echo ^| [35] Password Generator                   ^| [45] File Search                                       ^|
echo ^| [36] File Hash Checker                    ^| [46] Browser Cache Cleaner                             ^|
echo ^| [37] USB Monitor                          ^| [47] Recycle Bin Cleaner                               ^|
echo ^| [38] User Accounts                        ^| [48] Save Report                                       ^|
echo ^| [39] Defender Quick Scan                  ^|                                                        ^|
echo ^| [40] Firewall Toggle                      ^|                                                        ^|
echo +======================================================================================================+
echo ^| ADMIN TOOLS                               ^| MONITORING / VISUAL                                    ^|
echo +======================================================================================================+
echo ^| [49] Event Viewer                         ^| [59] Matrix Effect                                     ^|
echo ^| [50] Task Manager                         ^| [60] Toolkit Logo                                      ^|
echo ^| [51] Device Manager                       ^| [61] Theme Changer                                     ^|
echo ^| [52] Services                             ^| [62] Loading Animation                                 ^|
echo ^| [53] Disk Management                      ^| [63] Activity Logs                                     ^|
echo ^| [54] Environment Variables                ^| [64] About Toolkit                                     ^|
echo ^| [55] CMD Launcher                         ^| [65] Exit                                              ^|
echo ^| [56] PowerShell Launcher                  ^|                                                        ^|
echo ^| [57] Resource Monitor                     ^|                                                        ^|
echo ^| [58] Task Scheduler                       ^|                                                        ^|
echo +======================================================================================================+
echo.

set /p choice=Select Option :

if %choice%==1 goto sysinfo
if %choice%==2 goto cpumonitor
if %choice%==3 goto ram
if %choice%==4 goto disk
if %choice%==5 goto gpu
if %choice%==6 goto uptime
if %choice%==7 goto drivers
if %choice%==8 goto software
if %choice%==9 goto battery
if %choice%==10 goto startupapps
if %choice%==11 goto bios
if %choice%==12 goto board
if %choice%==13 goto serial
if %choice%==14 goto diskhealth
if %choice%==15 goto updates
if %choice%==16 goto netinfo
if %choice%==17 goto publicip
if %choice%==18 goto pingtest
if %choice%==19 goto trace
if %choice%==20 goto ports
if %choice%==21 goto dns
if %choice%==22 goto headers
if %choice%==23 goto routes
if %choice%==24 goto signal
if %choice%==25 goto mac
if %choice%==26 goto internet
if %choice%==27 goto devices
if %choice%==28 goto tcp
if %choice%==29 goto arp
if %choice%==30 goto speed
if %choice%==31 goto suspicious
if %choice%==32 goto defender
if %choice%==33 goto logins
if %choice%==34 goto firewall
if %choice%==35 goto password
if %choice%==36 goto hash
if %choice%==37 goto usb
if %choice%==38 goto users
if %choice%==39 goto defenderscan
if %choice%==40 goto firewalltoggle
if %choice%==41 goto foldersize
if %choice%==42 goto largefiles
if %choice%==43 goto tempview
if %choice%==44 goto hidden
if %choice%==45 goto filesearch
if %choice%==46 goto cacheclean
if %choice%==47 goto recycle
if %choice%==48 goto report
if %choice%==49 start eventvwr
if %choice%==50 start taskmgr
if %choice%==51 start devmgmt.msc
if %choice%==52 start services.msc
if %choice%==53 start diskmgmt.msc
if %choice%==54 goto env
if %choice%==55 start cmd
if %choice%==56 start powershell
if %choice%==57 start resmon
if %choice%==58 start taskschd.msc
if %choice%==59 goto matrix
if %choice%==60 goto logo
if %choice%==61 goto themes
if %choice%==62 goto loading
if %choice%==63 goto logs
if %choice%==64 goto about
if %choice%==65 exit

goto MAIN

:return
echo.
echo ======================================================================================================
echo Press Any Key To Return To Main Menu...
echo ======================================================================================================
pause >nul
goto MAIN

:sysinfo
cls
echo ================================================================================
echo SYSTEM INFORMATION
echo ================================================================================
echo Displays complete Windows system details including:
echo - OS Version
echo - CPU
echo - RAM
echo - Network
echo - Hotfixes
echo ================================================================================
pause
systeminfo | more
goto return

:cpumonitor
:cpuloop
cls
echo ================================================================================
echo CPU MONITOR
echo ================================================================================
echo Live CPU usage monitoring tool.
echo Useful for checking performance and background load.
echo ================================================================================
wmic cpu get loadpercentage
echo.
echo Press CTRL + C To Stop
timeout /t 2 >nul
goto cpuloop

:ram
cls
echo ================================================================================
echo RAM INFORMATION
echo ================================================================================
echo Displays installed RAM capacity and speed.
echo ================================================================================
pause
wmic memorychip get capacity,speed | more
goto return

:disk
cls
echo ================================================================================
echo DISK INFORMATION
echo ================================================================================
echo Displays total and free disk space.
echo ================================================================================
pause
wmic logicaldisk get caption,size,freespace | more
goto return

:gpu
cls
echo ================================================================================
echo GPU INFORMATION
echo ================================================================================
echo Displays installed graphics card information.
echo ================================================================================
pause
wmic path win32_VideoController get name
goto return

:uptime
cls
echo ================================================================================
echo SYSTEM UPTIME
echo ================================================================================
echo Shows how long your PC has been running.
echo ================================================================================
pause
net stats srv | find "Statistics since"
goto return

:drivers
cls
echo ================================================================================
echo INSTALLED DRIVERS
echo ================================================================================
echo Displays all installed hardware drivers.
echo ================================================================================
pause
driverquery | more
goto return

:software
cls
echo ================================================================================
echo INSTALLED APPLICATIONS
echo ================================================================================
echo Displays installed programs list.
echo ================================================================================
pause
wmic product get name | more
goto return

:battery
cls
echo ================================================================================
echo BATTERY REPORT
echo ================================================================================
echo Generates detailed battery health report.
echo ================================================================================
pause
powercfg /batteryreport
goto return

:startupapps
cls
echo ================================================================================
echo STARTUP APPLICATIONS
echo ================================================================================
echo Displays apps that start automatically with Windows.
echo ================================================================================
pause
wmic startup get caption,command | more
goto return

:bios
cls
echo ================================================================================
echo BIOS INFORMATION
echo ================================================================================
echo Displays BIOS version information.
echo ================================================================================
pause
wmic bios get smbiosbiosversion
goto return

:board
cls
echo ================================================================================
echo MOTHERBOARD INFORMATION
echo ================================================================================
echo Displays motherboard manufacturer and model.
echo ================================================================================
pause
wmic baseboard get manufacturer,product
goto return

:serial
cls
echo ================================================================================
echo SERIAL NUMBER
echo ================================================================================
echo Displays system serial number.
echo ================================================================================
pause
wmic bios get serialnumber
goto return

:diskhealth
cls
echo ================================================================================
echo DISK HEALTH
echo ================================================================================
echo Displays disk SMART status.
echo ================================================================================
pause
wmic diskdrive get status
goto return

:updates
cls
echo ================================================================================
echo INSTALLED UPDATES
echo ================================================================================
echo Displays installed Windows updates.
echo ================================================================================
pause
wmic qfe list | more
goto return

:netinfo
cls
echo ================================================================================
echo NETWORK INFORMATION
echo ================================================================================
echo Displays full network configuration.
echo ================================================================================
pause
ipconfig /all | more
goto return

:publicip
cls
echo ================================================================================
echo PUBLIC IP
echo ================================================================================
echo Displays your public internet IP address.
echo ================================================================================
pause
nslookup myip.opendns.com resolver1.opendns.com
goto return

:pingtest
cls
echo ================================================================================
echo PING TEST
echo ================================================================================
echo Tests connection to website or IP.
echo ================================================================================
set /p site=Enter Website/IP :
ping %site%
goto return

:trace
cls
echo ================================================================================
echo TRACEROUTE
echo ================================================================================
echo Shows route packets take to destination.
echo ================================================================================
set /p tr=Enter Website/IP :
tracert %tr%
goto return

:ports
cls
echo ================================================================================
echo OPEN PORTS
echo ================================================================================
echo Displays active ports and connections.
echo ================================================================================
pause
netstat -ano | more
goto return

:dns
cls
echo ================================================================================
echo DNS LOOKUP
echo ================================================================================
echo Displays DNS records of domain.
echo ================================================================================
set /p domain=Enter Domain :
nslookup %domain%
goto return

:headers
cls
echo ================================================================================
echo WEBSITE HEADER VIEWER
echo ================================================================================
echo Displays website HTTP headers.
echo ================================================================================
set /p web=Enter Website :
curl -I %web%
goto return

:routes
cls
echo ================================================================================
echo ROUTE TABLE
echo ================================================================================
echo Displays Windows routing table.
echo ================================================================================
pause
route print | more
goto return

:signal
cls
echo ================================================================================
echo WIFI SIGNAL
echo ================================================================================
echo Displays connected WiFi signal information.
echo ================================================================================
pause
netsh wlan show interfaces
goto return

:mac
cls
echo ================================================================================
echo MAC ADDRESS
echo ================================================================================
echo Displays adapter MAC addresses.
echo ================================================================================
pause
getmac | more
goto return

:internet
:internetloop
cls
echo ================================================================================
echo INTERNET MONITOR
echo ================================================================================
echo Live internet connection monitoring.
echo ================================================================================
ping google.com -n 1 >nul
if errorlevel 1 (
echo INTERNET STATUS : OFFLINE
) else (
echo INTERNET STATUS : ONLINE
)
timeout /t 2 >nul
goto internetloop

:devices
cls
echo ================================================================================
echo CONNECTED DEVICES
echo ================================================================================
echo Displays devices connected on local network.
echo ================================================================================
pause
arp -a | more
goto return

:tcp
cls
echo ================================================================================
echo TCP CONNECTIONS
echo ================================================================================
echo Displays active TCP connections.
echo ================================================================================
pause
netstat -an | more
goto return

:arp
cls
echo ================================================================================
echo ARP TABLE
echo ================================================================================
echo Displays ARP cache table.
echo ================================================================================
pause
arp -a
goto return

:speed
cls
echo ================================================================================
echo SPEED TEST
echo ================================================================================
echo CMD based speed test not supported directly.
echo Use browser based tools for accurate results.
echo ================================================================================
pause
goto return

:suspicious
cls
echo ================================================================================
echo SUSPICIOUS PROCESS SCANNER
echo ================================================================================
echo Scans for suspicious running processes.
echo ================================================================================
pause
tasklist | findstr /i "powershell cmd python"
goto return

:defender
cls
echo ================================================================================
echo WINDOWS DEFENDER STATUS
echo ================================================================================
echo Displays Defender service status.
echo ================================================================================
pause
sc query WinDefend
goto return

:logins
cls
echo ================================================================================
echo LOGIN HISTORY
echo ================================================================================
echo Displays recent Windows login events.
echo ================================================================================
pause
wevtutil qe Security /rd:true /f:text /c:10 | more
goto return

:firewall
cls
echo ================================================================================
echo FIREWALL STATUS
echo ================================================================================
echo Displays Windows Firewall configuration.
echo ================================================================================
pause
netsh advfirewall show allprofiles
goto return

:password
cls
echo ================================================================================
echo PASSWORD GENERATOR
echo ================================================================================
echo Generates random password.
echo ================================================================================
echo.
echo RANDOM PASSWORD :
echo %random%%random%%random%
goto return

:hash
cls
echo ================================================================================
echo FILE HASH CHECKER
echo ================================================================================
echo Generates SHA256 hash of file.
echo ================================================================================
set /p file=Enter File Path :
certutil -hashfile "%file%" SHA256
goto return

:usb
cls
echo ================================================================================
echo USB MONITOR
echo ================================================================================
echo Displays connected USB devices.
echo ================================================================================
pause
wmic logicaldisk get caption,description
goto return

:users
cls
echo ================================================================================
echo USER ACCOUNTS
echo ================================================================================
echo Displays local Windows user accounts.
echo ================================================================================
pause
net user
goto return

:defenderscan
cls
echo ================================================================================
echo DEFENDER QUICK SCAN
echo ================================================================================
echo Starts quick antivirus scan.
echo ================================================================================
pause
"%ProgramFiles%\Windows Defender\MpCmdRun.exe" -Scan -ScanType 1
goto return

:firewalltoggle
cls
echo ================================================================================
echo FIREWALL TOGGLE
echo ================================================================================
echo Enable or Disable Windows Firewall.
echo ================================================================================
echo [1] Enable Firewall
echo [2] Disable Firewall
set /p fw=Select :
if %fw%==1 netsh advfirewall set allprofiles state on
if %fw%==2 netsh advfirewall set allprofiles state off
goto return

:foldersize
cls
echo ================================================================================
echo FOLDER SIZE CHECKER
echo ================================================================================
echo Displays folder size and contents.
echo ================================================================================
set /p folder=Enter Folder :
dir "%folder%" /s | more
goto return

:largefiles
cls
echo ================================================================================
echo LARGE FILE SCANNER
echo ================================================================================
echo Finds largest files in folder.
echo ================================================================================
set /p path=Enter Path :
dir "%path%" /s /o-s | more
goto return

:tempview
cls
echo ================================================================================
echo TEMP VIEWER
echo ================================================================================
echo Displays temporary files.
echo ================================================================================
pause
dir %temp% | more
goto return

:hidden
cls
echo ================================================================================
echo HIDDEN FILES
echo ================================================================================
echo Displays hidden/system files.
echo ================================================================================
pause
attrib /s /d | more
goto return

:filesearch
cls
echo ================================================================================
echo FILE SEARCH
echo ================================================================================
echo Searches file in C drive.
echo ================================================================================
set /p file=Enter File Name :
dir C:\%file% /s /p
goto return

:cacheclean
cls
echo ================================================================================
echo BROWSER CACHE CLEANER
echo ================================================================================
echo Browser cache cleaning simulation.
echo ================================================================================
pause
echo Cache Cleaned
goto return

:recycle
cls
echo ================================================================================
echo RECYCLE BIN CLEANER
echo ================================================================================
echo Cleans Recycle Bin.
echo ================================================================================
pause
rd /s /q C:\$Recycle.Bin
goto return

:report
cls
echo ================================================================================
echo SAVE REPORT
echo ================================================================================
echo Saves system information report.
echo ================================================================================
pause
systeminfo > reports\report.txt
ipconfig /all >> reports\report.txt
tasklist >> reports\report.txt
netstat -ano >> reports\report.txt
echo Report Saved In reports Folder
goto return

:env
cls
echo ================================================================================
echo ENVIRONMENT VARIABLES
echo ================================================================================
echo Displays environment variables.
echo ================================================================================
pause
set | more
goto return

:matrix
color 0A
cls
echo Press CTRL + C To Stop
:matrixloop
echo %random%%random%%random%%random%%random%%random%
goto matrixloop

:logo
cls
echo.
echo ============================================================================================
echo.
echo                            SNIPER CMD TOOL KIT
echo.
echo ============================================================================================
goto return

:themes
cls
echo [1] Green
echo [2] Aqua
echo [3] Red
set /p t=Select Theme :
if %t%==1 color 0A
if %t%==2 color 0B
if %t%==3 color 0C
goto MAIN

:loading
cls
echo Loading Modules...
timeout /t 1 >nul
echo Starting Services...
timeout /t 1 >nul
echo Initializing...
timeout /t 1 >nul
goto return

:logs
cls
echo ================================================================================
echo ACTIVITY LOGS
echo ================================================================================
echo Displays logs folder contents.
echo ================================================================================
pause
dir logs
goto return

:about
cls
echo ================================================================================
echo ABOUT TOOLKIT
echo ================================================================================
echo SNIPER CMD TOOL KIT 
echo Version : 3.0
echo Platform : Windows CMD
echo Language : Batch Script
echo Created By : Rekhansh Rajput 
echo ================================================================================
goto return
