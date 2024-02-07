@echo off
setlocal EnableDelayedExpansion
cls

:: Initial ARK server setup settings
set "SessionName=TEST SERVER"
set "Map=TheIsland_WP"
set "ServerAdminPassword="
set "GamePort=7777"
set "MaxPlayers=40"
set "DriveLetter=C"

:: Optional ARK server setup settings
set "ServerPassword="
set "Mods=928988"
set "PassiveMods="
set "RCONPort=11640"
set "ClusterID="
set "ClusterDir="
set "ServerLocalIP=192.168.x.X"
set "ForceRespawnDinos=Yes"



:: Script dependency (do not modify)
set "AppID=2430930"
set "Server_Dir=%DriveLetter%:\SERVER"
set "Executable_Dir=%Server_Dir%\ShooterGame\Binaries\Win64"
set "Server_Executable=ArkAscendedServer.exe"
set "SteamCMD_Dir=%DriveLetter%:\STEAMCMD"
set "SteamCMD_URL=https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip"
set "SteamCMD_Zip=steamcmd.zip"
set "SteamCMD_Executable=steamcmd.exe"
set "ScriptVersion=v1.0.6"
set "ScriptDevelopers=xamayca and afteR"
set "windowTitle=ARK: FRANCE SURVIVAL ASCENDED SERVERS SCRIPT (%ScriptVersion%) by %ScriptDevelopers%"

title "%windowTitle%"

:: Used to restart the script when a crash is detected.
:ServerCrashRestart
:: Display script information
call :DisplayBanner
call :DisplayScriptInfo
:: Download and install VCRedist 2015, 2017, 2019, and 2022 Redistributable
call :CheckAndInstallVCRedist2015-22
:: Download and install certificate
call :DownloadAndInstallCertificate
:: Configure firewall rules
call :ConfigureFirewallRules
:: Check if the specified drive is available
call :CheckDrive
:: Create necessary directories
call :CreateDirectory "%SteamCMD_Dir%"
call :CreateDirectory "%Server_Dir%"
:: Download and extract SteamCMD
call :DownloadAndExtractSteamCMD
:: Check for server updates
call :CheckServerUpdates
:: Display final server configuration
call :DisplayConfigurations
:: Launch the ARK server
call :LaunchARKServer
:: Monitor the ARK server
call :ServerMonitoring
goto :eof



:: Function definitions
:DisplayBanner
:: Display a custom banner for the script
echo ------------------------------------------------------------------------------------------------------------------
echo "............_____...............................................................__...............__.............";
echo ".........._/.____\___________....____...____..____.....________.____________.._|__|__.._______..|..|............";
echo "..........\...__\\_..__.\__..\../....\_/.___\/.__.\.../..___/..|..\_..__.\..\/./..\..\/./\__..\.|..|............";
echo "...........|..|...|..|.\//.__.\|...|..\..\__\..___/...\___.\|..|../|..|.\/\.../|..|\.../../.__.\|..|__..........";
echo "...........|__|...|__|..(____../___|../\___..>___..>./____..>____/.|__|....\_/.|__|.\_/..(____../____/..........";
echo ".............................\/.....\/.....\/....\/.......\/..................................\/................";
echo ------------------------------------------------------------------------------------------------------------------
goto :eof

:DisplayScriptInfo
:: Display information about the script, its developers, and community links
echo.
echo This script is developed by %ScriptDevelopers% for helping peoples to host ARK: Survival Ascended Servers!
echo.
echo VISIT OUR WEBSITE: https://www.france-survival.fr/
echo.
echo CHECK OUT OUR GITHUB REPOSITORY: https://github.com/xamayca/FRANCE-SURVIVAL-ASCENDED-SERVER-SCRIPT
echo.
echo JOIN OUR DISCORD COMMUNITY FRENCH PLAYER: https://discord.gg/F7pQyrRDd8
echo.
echo FOLLOW US ON INSTAGRAM: https://www.instagram.com/francesurvival/
echo.
echo LIKE OUR FACEBOOK PAGE: https://www.facebook.com/profile.php?id=61553584645099
echo.
echo Thank you to all contributors and community members for your support!
echo.
echo FRANCE SURVIVAL is a french community project based on ARK: Survival Ascended, made with love, Code and Network !
echo.
echo Waiting for 5 seconds before continuing...
timeout /t 5 /nobreak > nul
goto :eof



:CheckAndInstallVCRedist2015-22
echo ------------------------------------------------------------------------------------------------------------------
echo                    CHECKING AND INSTALLING VISUAL C++ 2015-2022 REDISTRIBUTABLE, PLEASE WAIT...
echo ------------------------------------------------------------------------------------------------------------------
:: Define the redistributable download URL
set "VCRedist_Setup=vc_redist.x64.exe"
set "VCRedist_URL=https://aka.ms/vs/17/release/%VCRedist_Setup%"
:: Checking for Visual Studio 2015, 2017, 2019, and 2022 Redistributable
echo.
echo [LOG] Checking for Visual C++ 2015-2022 Redistributable...
for /f "tokens=*" %%I in ('reg query "HKLM\SOFTWARE\WOW6432Node\Microsoft\VisualStudio\14.0\VC\Runtimes\x64" /v "Installed" 2^>nul') do set installed205_22=1
for /f "tokens=*" %%I in ('reg query "HKLM\SOFTWARE\WOW6432Node\Microsoft\VisualStudio\15.0\VC\Runtimes\x64" /v "Installed" 2^>nul') do set installed205_22=1
for /f "tokens=*" %%I in ('reg query "HKLM\SOFTWARE\WOW6432Node\Microsoft\VisualStudio\16.0\VC\Runtimes\x64" /v "Installed" 2^>nul') do set installed205_22=1
for /f "tokens=*" %%I in ('reg query "HKLM\SOFTWARE\WOW6432Node\Microsoft\VC\Redist\x64\14.2x" /v "Installed" 2^>nul') do set installed205_22=1
:: If not installed, download and install
if not defined installed205_22 (
    echo.
    echo [LOG] Downloading Visual C++ 2015-2022 Redistributable from %VCRedist_URL%...
    powershell -Command "& {Invoke-WebRequest -Uri '%VCRedist_URL%' -OutFile '%VCRedist_Setup%'}"
    if not exist "%VCRedist_Setup%" (
        echo.
        echo [ERROR] Failed to download Visual C++ Redistributable.
        pause
        goto :eof
    )
    start "" /wait "%VCRedist_Setup%" /install /passive /norestart
    if %ERRORLEVEL% == 0 (
        echo.
        echo [LOG] Cleaning up installation files...
        del "%VCRedist_Setup%"
        echo.
        echo [SUCCESS] Visual C++ 2015-2022 Redistributable installed successfully.
    ) else (
        echo.
        echo [ERROR] Visual C++ Redistributable installation failed with error level %ERRORLEVEL%.
        pause
    )
) else (
    echo.
    echo [SUCCESS] Visual C++ 2015-2022 Redistributable is already installed.
)
echo.
echo ------------------------------------------------------------------------------------------------------------------
echo.
goto :eof



:DownloadAndInstallCertificate
echo ------------------------------------------------------------------------------------------------------------------
echo                    CHECKING AND INSTALLING CERTIFICATE, PLEASE WAIT...
echo ------------------------------------------------------------------------------------------------------------------

set "CertificateFile=SFSRootCAG2.cer"
set "CertificateURL=https://www.amazontrust.com/repository/%CertificateFile%"
set "CertName=Starfield"

powershell -Command "& { $cert = Get-ChildItem -Path Cert:\LocalMachine\Root | Where-Object { $_.Subject -like '*%CertName%*' -or $_.Issuer -like '*%CertName%*' }; if ($cert) { Write-Host '[SUCCESS] A certificate with the name "%CertName%" is already installed.'; exit 0 } else { exit 1 } }"
if %ERRORLEVEL% == 0 goto :eof

echo [LOG] Downloading certificate from %CertificateURL%...
powershell -Command "& {Invoke-WebRequest -Uri '%CertificateURL%' -OutFile '%CertificateFile%'}"

if not exist "%CertificateFile%" (
    echo [ERROR] Failed to download certificate.
    pause
    goto eof
)

echo [LOG] Installing certificate...
certutil -addstore "root" "%CertificateFile%"

if %ERRORLEVEL% == 0 (
    echo [SUCCESS] Certificate installed successfully.
    echo [LOG] Cleaning up installation files...
    del "%CertificateFile%"
    echo [SUCCESS] Certificate cleanup completed.
) else (
    echo [ERROR] Failed to install certificate with error level %ERRORLEVEL%.
    pause
)

echo ------------------------------------------------------------------------------------------------------------------
echo.
goto :eof



:ConfigureFirewallRules
echo ------------------------------------------------------------------------------------------------------------------
echo                         CHECKING AND CONFIGURING FIREWALL RULES FOR GAME PORTS, PLEASE WAIT...
echo ------------------------------------------------------------------------------------------------------------------
echo.
echo [LOG] Configuring firewall rules for Game Ports...
echo.
powershell -command "& { if ((Get-NetFirewallRule -DisplayName 'ARK ASCENDED SERVER GAME PORT UDP IN' -ErrorAction SilentlyContinue) -eq $null) { echo 'GAME UDP IN RULE DOES NOT EXIST, CREATING...'; New-NetFirewallRule -DisplayName 'ARK ASCENDED SERVER GAME PORT UDP IN' -Direction Inbound -Protocol UDP -LocalPort %GamePort% -Action Allow; echo 'GAME UDP IN RULE CREATED.' } else { echo 'GAME UDP IN RULE ALREADY EXISTS.' } }"
echo.
powershell -command "& { if ((Get-NetFirewallRule -DisplayName 'ARK ASCENDED SERVER GAME PORT UDP OUT' -ErrorAction SilentlyContinue) -eq $null) { echo 'GAME UDP OUT RULE DOES NOT EXIST, CREATING...'; New-NetFirewallRule -DisplayName 'ARK ASCENDED SERVER GAME PORT UDP OUT' -Direction Outbound -Protocol UDP -LocalPort %GamePort% -Action Allow; echo 'GAME UDP OUT RULE CREATED.' } else { echo 'GAME UDP OUT RULE ALREADY EXISTS.' } }"
echo.
powershell -command "& { if ((Get-NetFirewallRule -DisplayName 'ARK ASCENDED SERVER RCON PORT TCP IN' -ErrorAction SilentlyContinue) -eq $null) { echo 'RCON TCP IN RULE DOES NOT EXIST, CREATING...'; New-NetFirewallRule -DisplayName 'ARK ASCENDED SERVER RCON PORT TCP IN' -Direction Inbound -Protocol TCP -LocalPort %RCONPort% -Action Allow; echo 'RCON TCP IN RULE CREATED.' } else { echo 'RCON TCP IN RULE ALREADY EXISTS.' } }"
echo.
echo [SUCCESS] Firewall rules for Game ports are configured.
echo.
echo ------------------------------------------------------------------------------------------------------------------
echo.
goto :eof




:CheckDrive
echo ------------------------------------------------------------------------------------------------------------------
echo                             CHECKING DRIVE FOR SERVER INSTALLATION, PLEASE WAIT...
echo ------------------------------------------------------------------------------------------------------------------
echo.
echo [LOG] Checking if drive %DriveLetter% exists...
if not exist "%DriveLetter%:\" (
    echo.
    echo [ERROR] Drive %DriveLetter% not found.
    echo.
    echo [LOG] Please verify the drive letter and press any key to retry...
    pause
    goto :CheckDrive
)
echo.
echo [SUCCESS] Drive %DriveLetter% found.
echo.
echo ------------------------------------------------------------------------------------------------------------------
echo.
goto :eof




:CreateDirectory
echo ------------------------------------------------------------------------------------------------------------------
echo                           CREATING DIRECTORIES FOR SERVER AND STEAM CMD, PLEASE WAIT...
echo ------------------------------------------------------------------------------------------------------------------
set "DirPath=%1"
echo.
echo [LOG] Creating directory: %DirPath%...
if not exist "%DirPath%" (
    mkdir "%DirPath%"
    echo.
    echo [SUCCESS] Directory created: %DirPath%
) else (
    echo.
    echo [SUCCESS] Directory %DirPath% already exists.
)
echo.
echo ------------------------------------------------------------------------------------------------------------------
echo.
goto :eof



:DownloadAndExtractSteamCMD
echo ------------------------------------------------------------------------------------------------------------------
echo                              DOWNLOADING AND EXTRACTING STEAMCMD, PLEASE WAIT...
echo ------------------------------------------------------------------------------------------------------------------
echo.
echo [LOG] Downloading SteamCMD from %SteamCMD_URL%...
if not exist "%SteamCMD_Dir%\%SteamCMD_Executable%" (
    powershell -Command "Invoke-WebRequest -Uri '%SteamCMD_URL%' -OutFile '%SteamCMD_Zip%'"
    echo.
    echo [LOG] Extracting SteamCMD...
    powershell -Command "Expand-Archive -LiteralPath '%SteamCMD_Zip%' -DestinationPath '%SteamCMD_Dir%'"
    echo.
    echo [LOG] Cleaning up installation files...
    del "%SteamCMD_Zip%"
    echo.
    echo [SUCCESS] SteamCMD installed successfully.
) else (
    echo.
    echo [SUCCESS] SteamCMD already downloaded.
)
echo.
echo ------------------------------------------------------------------------------------------------------------------
echo.
goto :eof



:CheckServerUpdates
echo ------------------------------------------------------------------------------------------------------------------
echo                                 CHECKING FOR SERVER UPDATE, PLEASE WAIT...
echo ------------------------------------------------------------------------------------------------------------------
echo.
echo [LOG] Checking for ARK server updates...
"%SteamCMD_Dir%\%SteamCMD_Executable%" +force_install_dir "%Server_Dir%" +login anonymous +app_update "%AppID%" validate +quit
echo.
echo ------------------------------------------------------------------------------------------------------------------
echo.
goto :eof



:DisplayConfigurations
echo.
echo ------------------------------------------------------------------------------------------------------------------
echo                                    SERVER CONFIGURATION SUMMARY
echo ------------------------------------------------------------------------------------------------------------------
call :DisplayConfigValue "Session Name"          "%SessionName%"
call :DisplayConfigValue "Map"                   "%Map%"
call :DisplayConfigValue "Server Admin Password" "%ServerAdminPassword%"
call :DisplayConfigValue "Port"                  "%GamePort%"
call :DisplayConfigValue "Max Players"           "%MaxPlayers%"
call :DisplayConfigValue "Drive Letter"          "%DriveLetter%"
call :DisplayConfigValue "Server Password"       "%ServerPassword%"
call :DisplayConfigValue "Mods"                  "%Mods%"
call :DisplayConfigValue "Passive Mods"          "%Passivemods%"
call :DisplayConfigValue "RCON Port"             "%RCONPort%"
call :DisplayConfigValue "Cluster ID"            "%ClusterID%"
call :DisplayConfigValue "Script Version"        "%ScriptVersion%"
call :DisplayConfigValue "Script Developers"     "%ScriptDevelopers%"
echo ------------------------------------------------------------------------------------------------------------------
goto :eof

:DisplayConfigValue
set "ConfigName=%~1"
set "ConfigValue=%~2"
if not defined ConfigValue set "ConfigValue=Not Defined"
echo   %ConfigName%: %ConfigValue%
goto :eof



:LaunchARKServer
echo ------------------------------------------------------------------------------------------------------------------
echo                         ARK: SURVIVAL EVOLVED SERVER IS STARTING, PLEASE WAIT...
echo ------------------------------------------------------------------------------------------------------------------
echo.
set "LaunchOptions=%Executable_Dir%\%Server_Executable% %Map%?SessionName=\"%SessionName%\"?Port=%GamePort%"
if not "%RCONPort%"=="" (
set "LaunchOptions=%LaunchOptions%?RCONPort=%RCONPort%"
echo RCON Port option added to the launch command...
echo.
)
if not "%ServerAdminPassword%"=="" (
set "LaunchOptions=%LaunchOptions%?ServerAdminPassword=%ServerAdminPassword%"
echo Server Admin Password option added to the launch command...
echo.
)
if not "%ServerPassword%"=="" (
set "LaunchOptions=%LaunchOptions%?ServerPassword=%ServerPassword%"
echo Server Password option added to the launch command...
echo.
)
if not "%MaxPlayers%"=="" (
set "LaunchOptions=%LaunchOptions% -WinLiveMaxPlayers=%MaxPlayers%"
echo Max Player option added to the launch command...
echo.
)
if not "%Mods%"=="" (
set "LaunchOptions=%LaunchOptions% -mods=%Mods%"
echo Mods option added to the launch command...
echo.
)
if "%ForceRespawnDinos%"=="Yes" (
set "LaunchOptions=%LaunchOptions% -ForceRespawnDinos"
echo ForceRespawnDinos option added to the launch command...
echo.
)
echo [LOG] Launching server with the following options: %LaunchOptions%
start "" /b "%Executable_Dir%\%Server_Executable%" %LaunchOptions%
echo [SUCCESS] ARK Server launched. Monitor this window for server logs.
echo.
echo ------------------------------------------------------------------------------------------------------------------
echo.
goto :eof



:ServerMonitoring
echo ------------------------------------------------------------------------------------------------------------------
echo                                      MONITORING ARK SERVER FOR CRASHES...
echo ------------------------------------------------------------------------------------------------------------------
set "restartAttempts=0"
:monitorLoop
echo.
echo [LOG] Monitoring server crash is running, do not close this window...
timeout /t 300 /nobreak > nul
tasklist | findstr /i "%Server_Executable%" > nul
if errorlevel 1 (
    echo.
    echo [ERROR] Server process not found. Performing additional checks before restart...
    set /a "restartAttempts+=1"
    if !restartAttempts! LEQ 3 (
        echo Restart attempt %restartAttempts%...
        call :ServerCrashRestart
    ) else (
        echo.
        echo [ERROR] Maximum restart attempts reached. Server failed to restart after multiple attempts. Please check the server manually.
        goto :eof
    )
) else (
    echo.
    echo [SUCCESS] Server is running successfully, no crash detected, continue monitoring...
    set "restartAttempts=0"
)
goto monitorLoop
goto :eof

