@echo off
setlocal EnableDelayedExpansion
cls

:: INITIAL SERVER SETTINGS  (NECESSARY TO MODIFY)
set "SessionName=YOURSERVERNAME"
set "Map=TheIsland_WP"
set "ServerAdminPassword=YOURSERVERADMINPASSWORD"
set "GamePort=7777"
set "WinLiveMaxPlayers=40"
set "DriveLetter=C"

:: OPTIONAL ARK SERVER SETTINGS (MODIFY IF NECESSARY)


set "ServerPassword="
set "Mods="
set "PassiveMods="
set "ForceRespawnDinos=Yes"
set "RCONEnabled=True"
set "RCONPort=YOURRCONPORT"
set "AutoSavePeriodMinutes=15"
set "DontAlwaysNotifyPlayerJoined=False"
set "UseDynamicConfig=False"
set "CustomDynamicConfigUrl="
set "StasisKeepControllers=Yes"
set "UseServerNetSpeedCheck=Yes"
set "Language=fr"

:: CLUSTER SETTINGS (MODIFY IF NECESSARY)
set "ClusterID="
set "ClusterDirOverride="
set "PreventDownloadSurvivors=True"
set "PreventDownloadItems=True"
set "PreventDownloadDinos=True"
set "noTributeDownloads=True"
set "NoTransferFromFiltering=Yes"
set "MultiHome=YOURLOCALSERVERIP"


:: PLAYER & MAP SETTINGS (MODIFY IF NECESSARY)
set "PlayerCharacterWaterDrainMultiplier=0.5"
set "PlayerCharacterFoodDrainMultiplier=0.5"
set "ShowFloatingDamageText=False"
set "PreventSpawnAnimations=True"
set "ServerCrosshair=True"
set "AllowHitMarkers=True"
set "AllowFlyerCarryPvE=True"
set "AllowThirdPersonPlayer=True"
set "ShowMapPlayerLocation=True"
set "RandomSupplyCratePoints=True"

:: DIFFICULTY SETTINGS (MODIFY IF NECESSARY)
set "OverrideOfficialDifficulty=5"
set "DifficultyOffset=1"

:: DINOS SETTINGS (MODIFY IF NECESSARY)
set "AllowRaidDinoFeeding=False"

:: BREEDING SETTINGS (MODIFY IF NECESSARY)
set "AllowAnyoneBabyImprintCuddle=True"

:: TRIBE SETTINGS (MODIFY IF NECESSARY)
set "PreventTribeAlliances=True"

:: STRUCTURE SETTINGS (MODIFY IF NECESSARY)
set "AlwaysAllowStructurePickup=True"
set "ForceAllStructureLocking=True"
set "AllowCrateSpawnsOnTopOfStructures=True"
set "AllowCryoFridgeOnSaddle=True"
set "PerPlatformMaxStructuresMultiplier=100000"
set "PlatformSaddleBuildAreaBoundsMultiplier=100000"

:: RESOURCES & RATES SETTINGS (MODIFY IF NECESSARY)
set "TamingSpeedMultiplier=10"
set "HarvestAmountMultiplier=5"
set "XPMultiplier=10"
set "ItemStackSizeMultiplier=10"
set "StructurePreventResourceRadiusMultiplier=0.5"
set "ResourcesRespawnPeriodMultiplier=0.5"

:: DAY/NIGHT SETTINGS (MODIFY IF NECESSARY)
set "DayTimeSpeedScale=1"
set "DayCycleSpeedScale=1"
set "NightTimeSpeedScale=1"

:: GAMMA SETTINGS (MODIFY IF NECESSARY)
set "DisablePvEGamma=True"
set "EnablePvPGamma=False"

:: PVE SETTINGS (MODIFY IF NECESSARY)
set "AllowCaveBuildingPvE=False"

:: PVP SERVER SETTINGS (MODIFY IF NECESSARY)
set "serverPvE=False"
set "AllowCaveBuildingPvP=True"
set "PreventOfflinePvP=True"
set "PreventOfflinePvPInterval=1800"
set "ClampItemStats=True"
set "ItemStatClamps[1]=19800"
set "ItemStatClamps[3]=19800"
set "OverrideStructurePlatformPrevention=False"
set "ForceAllowCaveFlyers=Yes"

:: PURGE SETTINGS
set "USE_PURGE=Yes"
set "PURGE_START_DAY=vendredi"
set "PURGE_START_HOURS=20:40"
set "PURGE_STOP_DAY=samedi"
set "PURGE_STOP_HOURS=23:40"
set "PurgeMode=Inactive"

:: PURGE ACTIVATION MESSAGES ARRAY
set "MSG_PURGE_OFF[1]=Le serveur va redemarrer dans 20 minutes pour restaurer la configuration normale."
set "MSG_PURGE_OFF[2]=Le serveur va redemarrer dans 15 minutes pour restaurer la configuration normale."
set "MSG_PURGE_OFF[3]=Le serveur va redemarrer dans 10 minutes pour restaurer la configuration normale."
set "MSG_PURGE_OFF[4]=Le serveur va redemarrer dans 5 minutes pour restaurer la configuration normale."
set "MSG_PURGE_OFF[5]=Le serveur va redemarrer dans 1 minute pour restaurer la configuration normale."

:: PURGE DEACTIVATION MESSAGES ARRAY
set "MSG_PURGE_ON[1]=Le serveur va redemarrer dans 20 minutes pour appliquer les regles de purge."
set "MSG_PURGE_ON[2]=Le serveur va redemarrer dans 15 minutes pour appliquer les regles de purge."
set "MSG_PURGE_ON[3]=Le serveur va redemarrer dans 10 minutes pour appliquer les regles de purge."
set "MSG_PURGE_ON[4]=Le serveur va redemarrer dans 5 minutes pour appliquer les regles de purge."
set "MSG_PURGE_ON[5]=Le serveur va redemarrer dans 1 minute pour appliquer les regles de purge."

:: FIREWALL RULES NAMES SETTINGS (MODIFY IF NECESSARY)
set "UDP_RULE_NAME=ARK_ASCENDED_SERVER_GAME_PORT_UDP"
set "TCP_RCON_IN_RULE_NAME=ARK_ASCENDED_SERVER_RCON_PORT_TCP_IN"
set "TCP_RCON_OUT_RULE_NAME=ARK_ASCENDED_SERVER_RCON_PORT_TCP_OUT"

:: SCRIPT DEPENDENCIES (DO NOT MODIFY)
set "APP_ID=2430930"
set "SERVER_DIR=%DriveLetter%:\SERVER"
set "EXECUTABLE_DIR=%SERVER_DIR%\ShooterGame\Binaries\Win64"
set "SERVER_EXECUTABLE=ArkAscendedServer.exe"
:: STEAM CMD SETTINGS (DO NOT MODIFY)
set "STEAMCMD_ZIP=steamcmd.zip"
set "STEAMCMD_DIR=%DriveLetter%:\STEAMCMD"
set "STEAMCMD_EXECUTABLE=steamcmd.exe"
set "STEAMCMD_URL=https://steamcdn-a.akamaihd.net/client/installer/%STEAMCMD_ZIP%"
:: MCRCON SETTINGS (DO NOT MODIFY)
set "MCRCON_ZIP=%SERVER_DIR%\mcrcon.zip"
set "MCRCON_DIR=%SERVER_DIR%\mcrcon"
set "MCRCON_EXECUTABLE=mcrcon.exe"
set "MCRCON_URL=https://github.com/Tiiffi/mcrcon/releases/download/v0.7.2/mcrcon-0.7.2-windows-x86-64.zip"
:: CERTIFICATE SETTINGS (DO NOT MODIFY)
set "CERTIFICATE_FILE=SFSRootCAG2.cer"
set "CERTIFICATE_URL=https://www.amazontrust.com/repository/%CERTIFICATE_FILE%"
set "CERTIFICATE_NAME=Starfield"
:: VCREDIST SETTINGS (DO NOT MODIFY)
set "VCREDIST_EXECUTABLE=vc_redist.x64.exe"
set "VCREDIST_URL=https://aka.ms/vs/17/release/%VCREDIST_EXECUTABLE%"
:: SCRIPT VERSION AND DEVELOPERS (DO NOT MODIFY)
set "SCRIPT_VERSION=v1.1.2"
set "SCRIPT_DEVELOPERS=xamayca and afteR"
set "WINDOW_TITLE=ARK: FRANCE SURVIVAL ASCENDED SERVERS SCRIPT (%SCRIPT_VERSION%) by %SCRIPT_DEVELOPERS%"

title %WINDOW_TITLE%


:: Used to restart the script when a crash is detected.
:ServerRestart
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
rem -- if not %ClusterDirOverride%=="" if not %ClusterID%=="" (
rem -- call :CreateDirectory "%ClusterDirOverride%"
rem -- )
:: Download and extract SteamCMD
call :DownloadAndExtractSteamCMD
:: Check mcrcon installation
call :CheckMcrconInstallation
:: Check for server updates
call :CheckServerUpdates
:: Launch the ARK server
call :LaunchARKServer
:: Display final server configuration
call :DisplayConfigurations
:: Monitor the ARK server
call :ServerMonitoring
goto :eof

:DisplayDash
echo ------------------------------------------------------------------------------------------------------------------
goto :eof

:: Function definitions
:DisplayBanner
:: Display a custom banner for the script
call :DisplayDash
echo "............_____...............................................................__...............__.............";
echo ".........._/.____\___________....____...____..____.....________.____________.._|__|__.._______..|..|............";
echo "..........\...__\\_..__.\__..\../....\_/.___\/.__.\.../..___/..|..\_..__.\..\/./..\..\/./\__..\.|..|............";
echo "...........|..|...|..|.\//.__.\|...|..\..\__\..___/...\___.\|..|../|..|.\/\.../|..|\.../../.__.\|..|__..........";
echo "...........|__|...|__|..(____../___|../\___..>___..>./____..>____/.|__|....\_/.|__|.\_/..(____../____/..........";
echo ".............................\/.....\/.....\/....\/.......\/..................................\/................";
call :DisplayDash
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
timeout /t 5 /nobreak >nul
echo.
call :DisplayDash
goto :eof




:CheckAndInstallVCRedist2015-22
call :DisplayDash
echo                    CHECKING AND INSTALLING VISUAL C++ 2015-2022 REDISTRIBUTABLE, PLEASE WAIT...
call :DisplayDash
:: Checking for Visual Studio 2015, 2017, 2019, and 2022 Redistributable
echo.
echo [LOG] CHECKING FOR VISUAL C++ 2015-2022 REDISTRIBUTABLE...
for /f "tokens=*" %%I in ('reg query "HKLM\SOFTWARE\WOW6432Node\Microsoft\VisualStudio\14.0\VC\Runtimes\x64" /v "Installed" 2^>nul') do set installed205_22=1
for /f "tokens=*" %%I in ('reg query "HKLM\SOFTWARE\WOW6432Node\Microsoft\VisualStudio\15.0\VC\Runtimes\x64" /v "Installed" 2^>nul') do set installed205_22=1
for /f "tokens=*" %%I in ('reg query "HKLM\SOFTWARE\WOW6432Node\Microsoft\VisualStudio\16.0\VC\Runtimes\x64" /v "Installed" 2^>nul') do set installed205_22=1
for /f "tokens=*" %%I in ('reg query "HKLM\SOFTWARE\WOW6432Node\Microsoft\VC\Redist\x64\14.2x" /v "Installed" 2^>nul') do set installed205_22=1
:: If not installed, download and install
if not defined installed205_22 (
    echo.
    echo [LOG] DOWNLOADING VISUAL C++ 2015-2022 REDISTRIBUTABLE FROM %VCREDIST_URL%...
    powershell -Command "& {Invoke-WebRequest -Uri '%VCREDIST_URL%' -OutFile '%VCREDIST_EXECUTABLE%'}"
    if not exist "%VCREDIST_EXECUTABLE%" (
        echo.
        echo [ERROR] FAILED TO DOWNLOAD VISUAL C++ REDISTRIBUTABLE.
        pause
        goto :eof
    )
    start "" /wait "%VCREDIST_EXECUTABLE%" /install /passive /norestart
    if %ERRORLEVEL% == 0 (
        echo.
        echo [LOG] CLEANING UP INSTALLATION FILES...
        del "%VCREDIST_EXECUTABLE%"
        echo.
        echo [SUCCESS] VISUAL C++ 2015-2022 REDISTRIBUTABLE INSTALLED SUCCESSFULLY.
    ) else (
        echo.
        echo [ERROR] VISUAL C++ REDISTRIBUTABLE INSTALLATION FAILED WITH ERROR LEVEL %ERRORLEVEL%.
        pause
    )
) else (
    echo.
    echo [SUCCESS] VISUAL C++ 2015-2022 REDISTRIBUTABLE IS ALREADY INSTALLED.
)
echo.
call :DisplayDash
echo.
goto :eof




:DownloadAndInstallCertificate
call :DisplayDash
echo                    CHECKING AND INSTALLING CERTIFICATE, PLEASE WAIT...
call :DisplayDash
powershell -Command "& { $cert = Get-ChildItem -Path Cert:\LocalMachine\Root | Where-Object { $_.Subject -like '*%CERTIFICATE_NAME%*' -or $_.Issuer -like '*%CERTIFICATE_NAME%*' }; if ($cert) { Write-Host '[SUCCESS] A CERTIFICATE WITH THE NAME "%CERTIFICATE_NAME%" IS ALREADY INSTALLED.'; exit 0 } else { exit 1 } }"
if %ERRORLEVEL% == 0 goto :eof
echo.
echo [LOG] DOWNLOADING CERTIFICATE FROM %CERTIFICATE_URL%...
powershell -Command "& {Invoke-WebRequest -Uri '%CERTIFICATE_URL%' -OutFile '%CERTIFICATE_FILE%'}"
if not exist "%CERTIFICATE_FILE%" (
    echo.
    echo [ERROR] FAILED TO DOWNLOAD CERTIFICATE.
    pause
    goto eof
)
echo.
echo [SUCCESS] CERTIFICATE ARE CONFIGURED.
echo.
call :DisplayDash
echo.
goto :eof




:ConfigureFirewallRules
call :DisplayDash
echo                         CHECKING AND CONFIGURING FIREWALL RULES FOR GAME PORTS, PLEASE WAIT...
call :DisplayDash
echo.
echo [LOG] CONFIGURING FIREWALL RULES FOR GAME PORTS...
echo.
powershell -command "& { if ((Get-NetFirewallRule -DisplayName 'ARK ASCENDED SERVER GAME PORT UDP IN' -ErrorAction SilentlyContinue) -eq $null) { echo '[WARNING] GAME UDP IN RULE DOES NOT EXIST, CREATING...'; New-NetFirewallRule -DisplayName 'ARK ASCENDED SERVER GAME PORT UDP IN' -Direction Inbound -Protocol UDP -LocalPort %GamePort% -Action Allow; echo '[SUCCESS] GAME UDP IN RULE CREATED.' } else { echo '[SUCCESS] GAME UDP IN RULE ALREADY EXISTS.' } }"
echo.
powershell -command "& { if ((Get-NetFirewallRule -DisplayName 'ARK ASCENDED SERVER TCP RCON IN' -ErrorAction SilentlyContinue) -eq $null) { echo '[WARNING] TCP RCON IN RULE DOES NOT EXIST, CREATING...'; New-NetFirewallRule -DisplayName 'ARK ASCENDED SERVER TCP RCON IN' -Direction Inbound -Protocol TCP -LocalPort %RCONPort% -Action Allow; echo '[SUCCESS] TCP RCON IN RULE CREATED.' } else { echo '[SUCCESS] TCP RCON IN RULE ALREADY EXISTS.' } }"
if not "%RCONPort%"=="" (
    echo.
    powershell -command "& { if ((Get-NetFirewallRule -DisplayName 'ARK ASCENDED SERVER TCP RCON OUT' -ErrorAction SilentlyContinue) -eq $null) { echo '[WARNING] TCP RCON OUT RULE DOES NOT EXIST, CREATING...'; New-NetFirewallRule -DisplayName 'ARK ASCENDED SERVER TCP RCON OUT' -Direction Outbound -Protocol TCP -LocalPort %RCONPort% -Action Allow; echo '[SUCCESS] TCP RCON OUT RULE CREATED.' } else { echo '[SUCCESS] TCP RCON OUT RULE ALREADY EXISTS.' } }"
)
echo.
echo [SUCCESS] FIREWALL RULES ARE CONFIGURED.
echo.
call :DisplayDash
echo.
goto :eof




:CheckDrive
call :DisplayDash
echo                             CHECKING DRIVE FOR SERVER INSTALLATION, PLEASE WAIT...
call :DisplayDash
echo.
echo [LOG] CHECKING IF DRIVE %DriveLetter% EXISTS...
if not exist "%DriveLetter%:\" (
    echo.
    echo [ERROR] DRIVE %DriveLetter% NOT FOUND.
    echo.
    echo [LOG] PLEASE VERIFY THE DRIVE LETTER AND PRESS ANY KEY TO RETRY...
    pause
    goto :CheckDrive
)
echo.
echo [SUCCESS] DRIVE %DriveLetter% FOUND.
echo.
call :DisplayDash
echo.
goto :eof




:CreateDirectory
call :DisplayDash
echo                           CREATING DIRECTORIES FOR SERVER AND STEAM CMD, PLEASE WAIT...
call :DisplayDash
set "DirPath=%1"
echo.
echo [LOG] CREATING DIRECTORY: %DirPath%...
if not exist "%DirPath%" (
    mkdir "%DirPath%" || (
        echo.
        echo [ERROR] FAILED TO CREATE DIRECTORY: %DirPath%
        pause
        goto :eof
    )
    echo.
    echo [SUCCESS] DIRECTORY CREATED: %DirPath%
) else (
    echo.
    echo [SUCCESS] DIRECTORY %DirPath% ALREADY EXISTS.
)
echo.
call :DisplayDash
echo.
goto :eof




:DownloadAndExtractSteamCMD
call :DisplayDash
echo                              DOWNLOADING AND EXTRACTING STEAMCMD, PLEASE WAIT...
call :DisplayDash
echo.
echo [LOG] DOWNLOADING STEAMCMD FROM %STEAMCMD_URL%...
if not exist "%STEAMCMD_DIR%\%STEAMCMD_EXECUTABLE%" (
    powershell -Command "Invoke-WebRequest -Uri '%STEAMCMD_URL%' -OutFile '%STEAMCMD_ZIP%'" || (
        echo.
        echo [ERROR] FAILED TO DOWNLOAD STEAMCMD.
        pause
        goto :eof
    )
    echo.
    echo [LOG] EXTRACTING STEAMCMD...
    powershell -Command "Expand-Archive -LiteralPath '%STEAMCMD_ZIP%' -DestinationPath '%STEAMCMD_DIR%'" || (
        echo.
        echo [ERROR] FAILED TO EXTRACT STEAMCMD.
        pause
        goto :eof
    )
    echo.
    echo [LOG] CLEANING UP INSTALLATION FILES...
    del "%STEAMCMD_ZIP%" || (
        echo.
        echo [ERROR] FAILED TO DELETE TEMPORARY FILES.
        pause
        goto :eof
    )
    echo.
    echo [SUCCESS] STEAMCMD INSTALLED SUCCESSFULLY.
) else (
    echo.
    echo [SUCCESS] STEAMCMD ALREADY DOWNLOADED.
)
echo.
call :DisplayDash
echo.
goto :eof




:CheckMcrconInstallation
call :DisplayDash
echo                                        CHECKING MCRCON INSTALLATION
call :DisplayDash
echo.
echo [LOG] CHECKING MCRCON INSTALLATION...
if not exist "%MCRCON_DIR%\mcrcon.exe" (
    if not exist "%MCRCON_DIR%" (
        mkdir "%MCRCON_DIR%" || (
            echo.
            echo [ERROR] FAILED TO CREATE MCRCON DIRECTORY.
            pause
            goto :eof
        )
    )
    if not exist "%MCRCON_ZIP%" (
        powershell -Command "(New-Object System.Net.WebClient).DownloadFile('%MCRCON_URL%', '%MCRCON_ZIP%')" || (
            echo.
            echo [ERROR] FAILED TO DOWNLOAD MCRCON.
            pause
            goto :eof
        )
    )
    powershell -Command "Expand-Archive -LiteralPath '%MCRCON_ZIP%' -DestinationPath '%MCRCON_DIR%'" || (
        echo.
        echo [ERROR] FAILED TO EXTRACT MCRCON.
        pause
        goto :eof
    )
    echo.
    echo [LOG] CLEANING UP INSTALLATION FILES...
    del "%MCRCON_ZIP%" || (
        echo.
        echo [ERROR] FAILED TO DELETE TEMPORARY FILES.
        pause
        goto :eof
    )
    echo.
    echo [SUCCESS] MCRCON INSTALLED SUCCESSFULLY.
) else (
    echo.
    echo [SUCCESS] MCRCON IS ALREADY INSTALLED.
)
echo.
call :DisplayDash
echo.
goto :eof




:CheckServerUpdates
call :DisplayDash
echo                                 CHECKING FOR SERVER UPDATE, PLEASE WAIT...
call :DisplayDash
echo.
echo [LOG] CHECKING FOR ARK SERVER UPDATES...
set "SteamCMD=%STEAMCMD_DIR%\%STEAMCMD_EXECUTABLE%"
if not exist "%SteamCMD%" (
    echo [ERROR] STEAMCMD EXECUTABLE NOT FOUND: %SteamCMD%
    pause
    goto :eof
)
"%SteamCMD%" +force_install_dir "%SERVER_DIR%" +login anonymous +app_update "%APP_ID%" validate +quit
echo.
echo [SUCCESS] SERVER UPDATE COMPLETED SUCCESSFULLY.
echo.
call :DisplayDash
echo.
goto :eof




:LaunchARKServer
call :DisplayDash
echo                         ARK: SURVIVAL ASCENDED SERVER IS STARTING, PLEASE WAIT...
call :DisplayDash
echo.
set "LaunchOptions=%Executable_Dir%\%Server_Executable% %Map%?SessionName=\"%SessionName%\"?Port=%GamePort%"
:: Options ARK (?)
:: PLAYER & MAP LAUNCH OPTIONS
call :AddOption "?PlayerCharacterWaterDrainMultiplier=" "%PlayerCharacterWaterDrainMultiplier%"
call :AddOption "?PlayerCharacterFoodDrainMultiplier=" "%PlayerCharacterFoodDrainMultiplier%"
call :AddOption "?ShowFloatingDamageText=" "%ShowFloatingDamageText%"
call :AddOption "?PreventSpawnAnimations=" "%PreventSpawnAnimations%"
call :AddOption "?ServerCrosshair=" "%ServerCrosshair%"
call :AddOption "?AllowHitMarkers=" "%AllowHitMarkers%"
call :AddOption "?AllowFlyerCarryPvE=" "%AllowFlyerCarryPvE%"
call :AddOption "?AllowThirdPersonPlayer=" "%AllowThirdPersonPlayer%"
call :AddOption "?ShowMapPlayerLocation=" "%ShowMapPlayerLocation%"
call :AddOption "?RandomSupplyCratePoints=" "%RandomSupplyCratePoints%"
:: DINOS & CREATURES LAUNCH OPTIONS
call :AddOption "?AllowRaidDinoFeeding=" "%AllowRaidDinoFeeding%"
:: DIFFICULTY LAUNCH OPTIONS
call :AddOption "?OverrideOfficialDifficulty=" "%OverrideOfficialDifficulty%"
call :AddOption "?DifficultyOffset=" "%DifficultyOffset%"
:: BREEDING LAUNCH OPTIONS
call :AddOption "?AllowAnyoneBabyImprintCuddle=" "%AllowAnyoneBabyImprintCuddle%"
:: TRIBE LAUNCH OPTIONS
call :AddOption "?PreventTribeAlliances=" "%PreventTribeAlliances%"
:: STRUCTURE LAUNCH OPTIONS
call :AddOption "?AlwaysAllowStructurePickup=" "%AlwaysAllowStructurePickup%"
call :AddOption "?AllowCryoFridgeOnSaddle=" "%AllowCryoFridgeOnSaddle%"
call :AddOption "?ForceAllStructureLocking=" "%ForceAllStructureLocking%"
call :AddOption "?AllowCrateSpawnsOnTopOfStructures=" "%AllowCrateSpawnsOnTopOfStructures%"
call :AddOption "?PerPlatformMaxStructuresMultiplier=" "%PerPlatformMaxStructuresMultiplier%"
call :AddOption "?PlatformSaddleBuildAreaBoundsMultiplier=" "%PlatformSaddleBuildAreaBoundsMultiplier%"
:: RESOURCES & RATES LAUNCH OPTIONS
call :AddOption "?TamingSpeedMultiplier=" "%TamingSpeedMultiplier%"
call :AddOption "?HarvestAmountMultiplier=" "%HarvestAmountMultiplier%"
call :AddOption "?XPMultiplier=" "%XPMultiplier%"
call :AddOption "?ItemStackSizeMultiplier=" "%ItemStackSizeMultiplier%"
call :AddOption "?StructurePreventResourceRadiusMultiplier=" "%StructurePreventResourceRadiusMultiplier%"
call :AddOption "?ResourcesRespawnPeriodMultiplier=" "%ResourcesRespawnPeriodMultiplier%"
:: DAY/NIGHT LAUNCH OPTIONS
call :AddOption "?DayTimeSpeedScale=" "%DayTimeSpeedScale%"
call :AddOption "?DayCycleSpeedScale=" "%DayCycleSpeedScale%"
call :AddOption "?NightTimeSpeedScale=" "%NightTimeSpeedScale%"
:: GAMMA LAUNCH OPTIONS
call :AddOption "?DisablePvEGamma=" "%DisablePvEGamma%"
call :AddOption "?EnablePvPGamma=" "%EnablePvPGamma%"
:: PVE LAUNCH OPTIONS
call :AddOption "?AllowCaveBuildingPvE=" "%AllowCaveBuildingPvE%"
:: PVP SERVER LAUNCH OPTIONS
call :AddOption "?serverPvE=" "%serverPvE%"
call :AddOption "?PreventOfflinePvP=" "%PreventOfflinePvP%"
call :AddOption "?PreventOfflinePvPInterval=" "%PreventOfflinePvPInterval%"
call :AddOption "?ClampItemStats=" "%ClampItemStats%"
call :AddOption "?ItemStatClamps[1]=" "%ItemStatClamps[1]%"
call :AddOption "?ItemStatClamps[3]=" "%ItemStatClamps[3]%"
call :AddOption "?AllowCaveBuildingPvP=" "%AllowCaveBuildingPvP%"
call :AddOption "?OverrideStructurePlatformPrevention=" "%OverrideStructurePlatformPrevention%"
:: CLUSTER LAUNCH OPTIONS
call :AddOption "?PreventDownloadSurvivors=" "%PreventDownloadSurvivors%"
call :AddOption "?PreventDownloadItems=" "%PreventDownloadItems%"
call :AddOption "?PreventDownloadDinos=" "%PreventDownloadDinos%"
call :AddOption "?noTributeDownloads=" "%noTributeDownloads%"
:: OPTIONAL ARK SERVER LAUNCH OPTIONS
call :AddOption "?AutoSavePeriodMinutes=" "%AutoSavePeriodMinutes%"
call :AddOption "?DontAlwaysNotifyPlayerJoined=" "%DontAlwaysNotifyPlayerJoined%"
call :AddOption "?CustomDynamicConfigUrl=" "%CustomDynamicConfigUrl%"
:: IMPORTANT PLACEMENT OF RCON OPTIONS & PASSWORDS (MUST BE AT THE END)
call :AddOption "?ServerPassword=" "%ServerPassword%"
call :AddOption "?RCONEnabled=" "%RCONEnabled%"
call :AddOption "?RCONPort=" "%RCONPort%"
call :AddOption "?ServerAdminPassword=" "%ServerAdminPassword%"
:: Options ARK (-)
:: IMPORTANT PLACEMENT OF OTHER OPTIONS WITH PREFIXES (-) (MUST BE AT THE END)
call :AddOption " -WinLiveMaxPlayers=" "%WinLiveMaxPlayers%"
call :AddOption " -ClusterDirOverride=" "%ClusterDirOverride%"
call :AddOption " -clusterid=" "%ClusterID%"
call :AddOption " -MULTIHOME=" "%MultiHome%"
call :AddOption " -UseDynamicConfig=" "%UseDynamicConfig%"
call :AddOption " -ForceAllowCaveFlyers" "%ForceAllowCaveFlyers%"
call :AddOption " -ForceRespawnDinos" "%ForceRespawnDinos%"
call :AddOption " -culture=" "%Language%"
call :AddOption " -StasisKeepControllers" "%StasisKeepControllers%"
call :AddOption " -UseServerNetSpeedCheck" "%UseServerNetSpeedCheck%"
call :AddOption " -NoTransferFromFiltering" "%NoTransferFromFiltering%"
call :AddOption " -passivemods=" "%PassiveMods%"
call :AddOption " -mods=" "%Mods%"


echo [LOG] LAUNCHING ARK: SURVIVAL ASCENDED SERVER WITH THE FOLLOWING OPTIONS:
echo.
echo %LaunchOptions%
echo.
start "" /b "%Executable_Dir%\%Server_Executable%" %LaunchOptions%
echo [SUCCESS] ARK: SURVIVAL ASCENDED SERVER STARTED SUCCESSFULLY, PLEASE DO NOT CLOSE THIS WINDOW FOR MONITORING.
echo.
call :DisplayDash
echo.
goto :eof

:AddOption
SET "OptionName=%~1"
SET "OptionValue=%~2"

if defined OptionName (
    if /i "%OptionValue%"=="True" (
        SET "LaunchOptions=!LaunchOptions!%OptionName%%OptionValue%"
    ) else if /i "%OptionValue%"=="False" (
        SET "LaunchOptions=!LaunchOptions!%OptionName%%OptionValue%"
    ) else if /i "%OptionValue%"=="Yes" (
        SET "LaunchOptions=!LaunchOptions!%OptionName%"
    ) else if not "%OptionName%"=="" if not "%OptionValue%"=="" (
        SET "LaunchOptions=!LaunchOptions!%OptionName%%OptionValue%"
    )
)

goto :eof

:DisplayConfigurations
call :DisplayDash
echo                                      SERVER CONFIGURATION SUMMARY
call :DisplayDash
call :DisplayDash
echo              CATEGORY                                  CONFIGURATIONS
call :DisplayDash
echo              GENERAL ARK SERVER OPTIONS
call :DisplayDash
call :DisplayConfigValue "Session Name"                                   "%SessionName%"
call :DisplayConfigValue "Map"                                            "%Map%"
call :DisplayConfigValue "Language (culture)"                             "%Language%"
call :DisplayConfigValue "Port"                                           "%GamePort%"
call :DisplayConfigValue "Max Players"                                    "%WinLiveMaxPlayers%"
call :DisplayConfigValue "Drive Letter"                                   "%DriveLetter%"
call :DisplayConfigValue "Multihome"                                      "%MultiHome%"

call :DisplayDash
echo              SECONDARY ARK SERVER OPTIONS
call :DisplayDash
call :DisplayConfigValue "Server Password"                                "%ServerPassword%"
call :DisplayConfigValue "Dont Always Notify Player Joined"               "%DontAlwaysNotifyPlayerJoined%"
call :DisplayConfigValue "Use Dynamic Config"                             "%UseDynamicConfig%"
call :DisplayConfigValue "Custom Dynamic Config URL"                      "%CustomDynamicConfigUrl%"
call :DisplayConfigValue "Force Respawn Dinos"                            "%ForceRespawnDinos%"
call :DisplayConfigValue "Stasis Keep Controllers"                        "%StasisKeepControllers%"
call :DisplayConfigValue "Use Server Net Speed Check"                     "%UseServerNetSpeedCheck%"
call :DisplayConfigValue "Auto Save Period Minutes"                       "%AutoSavePeriodMinutes%"

call :DisplayDash
echo              RCON OPTIONS / PASSWORDS OPTIONS
call :DisplayDash
call :DisplayConfigValue "RCON Enabled"                                  "%RCONEnabled%"
call :DisplayConfigValue "RCON Port"                                     "%RCONPort%"
call :DisplayConfigValue "Server Admin Password"                         "%ServerAdminPassword%"

call :DisplayDash
echo              MODS AND PASSIVE MODS ARK SERVER OPTIONS
call :DisplayDash
call :DisplayConfigValue "Passive Mods"                                   "%PassiveMods%"
call :DisplayConfigValue "Mods"                                           "%Mods%"

call :DisplayDash
echo              DIFFICULTY ARK SERVER OPTIONS
call :DisplayDash
call :DisplayConfigValue "Override Official Difficulty"                   "%OverrideOfficialDifficulty%"
call :DisplayConfigValue "Difficulty Offset"                              "%DifficultyOffset%"

call :DisplayDash
echo              PVP ARK SERVER OPTIONS
call :DisplayDash
call :DisplayConfigValue "Prevent Offline PvP"                            "!PreventOfflinePvP!"
call :DisplayConfigValue "Prevent Offline PvP Interval"                   "!PreventOfflinePvPInterval!"
call :DisplayConfigValue "Enable PvP Gamma"                               "%EnablePvPGamma%"
call :DisplayConfigValue "Clamp Item Stats"                               "%ClampItemStats%"
call :DisplayConfigValue "Item Stat Clamps[1]"                            "%ItemStatClamps[1]%"
call :DisplayConfigValue "Item Stat Clamps[3]"                            "%ItemStatClamps[3]%"
call :DisplayConfigValue "Force Allow Cave Flyers"                        "%ForceAllowCaveFlyers%"
call :DisplayConfigValue "Allow Cave Building PVP"                        "%AllowCaveBuildingPvP%"

call :DisplayDash
echo              PVE ARK SERVER OPTIONS
call :DisplayDash
call :DisplayConfigValue "Disable PvE Gamma"                              "%DisablePvEGamma%"
call :DisplayConfigValue "Server PVE (if False, Server is PVP)"           "%ServerPvE%"
call :DisplayConfigValue "Allow Cave Building PVE"                        "%AllowCaveBuildingPvE%"
call :DisplayConfigValue "Allow Flyer Carry PvE"                          "%AllowFlyerCarryPvE%"

call :DisplayDash
echo              PLAYERS ARK SERVER OPTIONS
call :DisplayDash
call :DisplayConfigValue "Allow Hit Markers"                              "%AllowHitMarkers%"
call :DisplayConfigValue "Allow Third Person Player"                      "%AllowThirdPersonPlayer%"
call :DisplayConfigValue "Server Crosshair"                               "%ServerCrosshair%"
call :DisplayConfigValue "Show Floating Damage Text"                      "%ShowFloatingDamageText%"
call :DisplayConfigValue "Prevent Spawn Animations"                       "%PreventSpawnAnimations%"
call :DisplayConfigValue "Show Map Player Location"                       "%ShowMapPlayerLocation%"
call :DisplayConfigValue "Item Stack Size Multiplier"                     "%ItemStackSizeMultiplier%"
call :DisplayConfigValue "Player Water Drain Multiplier"                  "%PlayerCharacterWaterDrainMultiplier%"
call :DisplayConfigValue "Player Food Drain Multiplier"                   "%PlayerCharacterFoodDrainMultiplier%"

call :DisplayDash
echo             TRIBE ARK SERVER OPTIONS
call :DisplayDash
call :DisplayConfigValue "Prevent Tribe Alliances"                        "%PreventTribeAlliances%"

call :DisplayDash
echo              RATES ARK SERVER OPTIONS
call :DisplayDash
call :DisplayConfigValue "Taming Speed Multiplier"                        "%TamingSpeedMultiplier%"
call :DisplayConfigValue "Harvest Amount Multiplier"                      "%HarvestAmountMultiplier%"
call :DisplayConfigValue "XP Multiplier"                                  "%XPMultiplier%"

call :DisplayDash
echo             RESOURCES ARK SERVER OPTIONS
call :DisplayDash
call :DisplayConfigValue "Resources Respawn Period Multiplier"            "%ResourcesRespawnPeriodMultiplier%"
call :DisplayConfigValue "Structure Resource Radius Multiplier"           "%StructurePreventResourceRadiusMultiplier%"

call :DisplayDash
echo              STRUCTURE ARK SERVER OPTIONS
call :DisplayDash
call :DisplayConfigValue "Allow Crate Spawns On Top Of Structures"        "%AllowCrateSpawnsOnTopOfStructures%"
call :DisplayConfigValue "Override Structure Platform Prevention"         "%OverrideStructurePlatformPrevention%"
call :DisplayConfigValue "Always Allow Structure Pickup"                  "%AlwaysAllowStructurePickup%"
call :DisplayConfigValue "Force All Structure Locking"                    "%ForceAllStructureLocking%"
call :DisplayConfigValue "Allow Cryo Fridge On Saddle"                    "%AllowCryoFridgeOnSaddle%"
call :DisplayConfigValue "Per Platform Max Structures Multiplier"         "%PerPlatformMaxStructuresMultiplier%"
call :DisplayConfigValue "Platform Saddle Build Area Bounds Multiplier"   "%PlatformSaddleBuildAreaBoundsMultiplier%"

call :DisplayDash
echo             BREEDING ARK SERVER OPTIONS
call :DisplayDash
call :DisplayConfigValue "Allow Anyone Baby Imprint Cuddle"               "%AllowAnyoneBabyImprintCuddle%"

call :DisplayDash
echo             DINOS AND CREATURES ARK SERVER OPTIONS
call :DisplayDash
call :DisplayConfigValue "Allow Raid Dino Feeding"                        "%AllowRaidDinoFeeding%"

call :DisplayDash
echo              CLUSTER ARK SERVER OPTIONS
call :DisplayDash
call :DisplayConfigValue "Cluster ID"                                     "%ClusterID%"
call :DisplayConfigValue "Cluster Dir Override"                           "%ClusterDirOverride%"
call :DisplayConfigValue "Prevent Download Survivors"                     "%PreventDownloadSurvivors%"
call :DisplayConfigValue "Prevent Download Items"                         "%PreventDownloadItems%"
call :DisplayConfigValue "Prevent Download Dinos"                         "%PreventDownloadDinos%"
call :DisplayConfigValue "No Tribute Downloads"                           "%noTributeDownloads%"
call :DisplayConfigValue "No Transfer From Filtering"                     "%NoTransferFromFiltering%"

call :DisplayDash
echo              OTHER ARK SERVER OPTIONS
call :DisplayDash
call :DisplayConfigValue "Random Supply Crate Points"                     "%RandomSupplyCratePoints%"
call :DisplayConfigValue "Night Time Speed Scale"                         "%NightTimeSpeedScale%"
call :DisplayConfigValue "Day Time Speed Scale"                           "%DayTimeSpeedScale%"
call :DisplayConfigValue "Day Cycle Speed Scale"                          "%DayCycleSpeedScale%"

call :DisplayDash
echo              SERVER PURGE PVP GAMEPLAY OPTIONS
call :DisplayDash
call :DisplayConfigValue "USE PURGE"                                     "%USE_PURGE%"
call :DisplayConfigValue "PURGE START DAY"                               "%PURGE_START_DAY%"
call :DisplayConfigValue "PURGE START HOURS"                             "%PURGE_START_HOURS%"
call :DisplayConfigValue "PURGE STOP DAY"                                "%PURGE_STOP_DAY%"
call :DisplayConfigValue "PURGE STOP HOURS"                              "%PURGE_STOP_HOURS%"
echo.
call :DisplayDash
goto :eof

:DisplayConfigValue
set "ConfigName=%~1"
set "ConfigValue=%~2"
if not defined ConfigValue set "ConfigValue=Not Defined"
echo   %ConfigName%: %ConfigValue%
goto :eof


:ServerMonitoring
call :DisplayDash
echo                                      MONITORING ARK SERVER FOR CRASHES...
call :DisplayDash

:setRestartAttempts
set /a restartAttempts=%restartAttempts%+1
if %restartAttempts% gtr 3 (
    echo MAXIMUM RESTART ATTEMPTS REACHED. EXITING SCRIPT.
    pause
    goto :eof
)

:monitorLoop
echo [LOG] MONITORING SERVER FOR CRASHES, DO NOT CLOSE THIS WINDOW...
timeout /t 300 /nobreak >nul

if "%USE_PURGE%"=="Yes" (

    for /f "tokens=1,2 delims= " %%a in ('powershell -Command "Get-Date -Format 'HH:mm dddd'"') do (
        set "currentTime=%%a"
        set "currentDay=%%b"
    )

    set "currentDay=!currentDay: =!"
    set "currentTime=!currentTime: =0!"

    echo LOG: USE PURGE: !USE_PURGE!
    echo LOG: PURGE MODE: !PurgeMode!
    echo LOG: CURRENT DATE: !currentDay! !currentTime!
    echo LOG: PURGE START DATE: !PURGE_START_DAY! !PURGE_START_HOURS!
    echo LOG: PURGE STOP DATE: !PURGE_STOP_DAY! !PURGE_STOP_HOURS!

    echo [LOG] PURGE MODE IS ENABLED. CHECKING FOR PURGE START/STOP TIMES...
    timeout /t 5 /nobreak >nul

    if "!currentDay!"=="%PURGE_START_DAY%" (
     echo [LOG] MATCH: !currentDay! == %PURGE_START_DAY%
     if "!currentTime!" GEQ "!PURGE_START_HOURS!" (
         echo [LOG] TIME CHECK: !currentTime! GEQ %PURGE_START_HOURS%
         timeout /t 5 /nobreak >nul
         if not "%PurgeMode%"=="Active" (
             echo [LOG] PURGE MODE CHECK: PurgeMode is not Active
             echo.
             echo [INFO] IT IS %PURGE_START_DAY% %PURGE_START_HOURS%. LAUNCHING THE PURGE...
             call :PurgeModeStart
             echo [LOG] PurgeMode set to Active
             set "PurgeMode=Active"
             echo [LOG] PreventOfflinePvP set to False
             set "PreventOfflinePvP=False"
             echo [LOG] Calling ServerRestart
             call :ServerRestart
          ) else (
              echo [LOG] PURGE MODE CHECK: PurgeMode is already Active
           )
       ) else (
           echo [LOG] TIME CHECK: Current time is not greater or equal to PURGE_START_HOURS
       )
    ) else (
       echo [LOG] MATCH: Current day does not match PURGE_START_DAY
    )

    if /i "!currentDay!"=="%PURGE_STOP_DAY%" (
      echo [LOG] MATCH: !currentDay! == %PURGE_STOP_DAY%
      timeout /t 5 /nobreak >nul
      if "!currentTime!" GEQ "%PURGE_STOP_HOURS%" (
          echo [LOG] TIME CHECK: !currentTime! GEQ %PURGE_STOP_HOURS%
          timeout /t 5 /nobreak >nul
          if "%PurgeMode%"=="Active" (
              echo [LOG] PURGE MODE CHECK: PurgeMode is Active
              echo.
              echo [INFO] IT IS %PURGE_STOP_DAY% %PURGE_STOP_HOURS%. STOPPING THE PURGE...
              call :PurgeModeStop
              echo [LOG] PurgeMode set to Inactive
              set "PurgeMode=Inactive"
              echo [LOG] PreventOfflinePvP set to True
              set "PreventOfflinePvP=True"
              echo [LOG] Calling ServerRestart
              call :ServerRestart
           ) else (
              echo [LOG] PURGE MODE CHECK: PurgeMode is already Inactive
          )
        ) else (
            echo [LOG] TIME CHECK: Current time is not greater or equal to PURGE_STOP_HOURS
        )
    ) else (
        echo [LOG] MATCH: Current day does not match PURGE_STOP_DAY
    )
) else (
    echo [LOG] PURGE MODE IS DISABLED. SKIPPING PURGE START/STOP TIME CHECKS...
    timeout /t 5 /nobreak >nul
)

echo.
echo [SUCCESS] SERVER IS RUNNING SUCCESSFULLY. WAITING FOR 5 MINUTES BEFORE RECHECKING...
set "restartAttempts=0"

goto :monitorLoop



:PurgeModeStart
echo.
echo [INFO] IT'S %PURGE_START_DAY% %PURGE_START_HOURS%. SEND ANNOUNCEMENTS FOR THE PURGE START...
%MCRCON_DIR%\%MCRCON_EXECUTABLE% -H %MultiHome% -P %RCONPort% -p %ServerAdminPassword% "serverchat !MSG_PURGE_ON[1]!"
timeout /t 300 /nobreak >nul
%MCRCON_DIR%\%MCRCON_EXECUTABLE% -H %MultiHome% -P %RCONPort% -p %ServerAdminPassword% "serverchat !MSG_PURGE_ON[2]!"
timeout /t 300 /nobreak >nul
%MCRCON_DIR%\%MCRCON_EXECUTABLE% -H %MultiHome% -P %RCONPort% -p %ServerAdminPassword% "serverchat !MSG_PURGE_ON[3]!"
timeout /t 300 /nobreak >nul
%MCRCON_DIR%\%MCRCON_EXECUTABLE% -H %MultiHome% -P %RCONPort% -p %ServerAdminPassword% "serverchat !MSG_PURGE_ON[4]!"
timeout /t 240 /nobreak >nul
%MCRCON_DIR%\%MCRCON_EXECUTABLE% -H %MultiHome% -P %RCONPort% -p %ServerAdminPassword% "serverchat !MSG_PURGE_ON[5]!"
%MCRCON_DIR%\%MCRCON_EXECUTABLE% -H %MultiHome% -P %RCONPort% -p %ServerAdminPassword% "SaveWorld"
timeout /t 60 /nobreak >nul
echo.
echo [INFO] IT'S %PURGE_START_DAY% %PURGE_START_HOURS%. APPLYING PURGE CONFIGURATION AND RESTARTING SERVER...
taskkill /IM "%SERVER_EXECUTABLE%" > nul
echo.
echo SERVER STOPPED. WAITING 10 SECONDS BEFORE RESTART...
timeout /t 10 /nobreak >nul
goto :eof

:PurgeModeStop
echo.
echo [INFO] IT'S %PURGE_STOP_DAY% %PURGE_STOP_HOURS%. SEND ANNOUNCEMENTS FOR THE PURGE STOP...
%MCRCON_DIR%\%MCRCON_EXECUTABLE% -H %MultiHome% -P %RCONPort% -p %ServerAdminPassword% "serverchat !MSG_PURGE_OFF[1]!"
timeout /t 300 /nobreak >nul
%MCRCON_DIR%\%MCRCON_EXECUTABLE% -H %MultiHome% -P %RCONPort% -p %ServerAdminPassword% "serverchat !MSG_PURGE_OFF[2]!"
timeout /t 300 /nobreak >nul
%MCRCON_DIR%\%MCRCON_EXECUTABLE% -H %MultiHome% -P %RCONPort% -p %ServerAdminPassword% "serverchat !MSG_PURGE_OFF[3]!"
timeout /t 300 /nobreak >nul
%MCRCON_DIR%\%MCRCON_EXECUTABLE% -H %MultiHome% -P %RCONPort% -p %ServerAdminPassword% "serverchat !MSG_PURGE_OFF[4]!"
timeout /t 240 /nobreak >nul
%MCRCON_DIR%\%MCRCON_EXECUTABLE% -H %MultiHome% -P %RCONPort% -p %ServerAdminPassword% "serverchat !MSG_PURGE_OFF[5]!"
%MCRCON_DIR%\%MCRCON_EXECUTABLE% -H %MultiHome% -P %RCONPort% -p %ServerAdminPassword% "SaveWorld"
timeout /t 60 /nobreak >nul
echo.
echo [INFO] IT'S %PURGE_STOP_DAY% %PURGE_STOP_HOURS%. APPLYING NO PURGE CONFIGURATION AND RESTARTING SERVER...
taskkill /IM "%SERVER_EXECUTABLE%" > nul
echo.
echo SERVER STOPPED. WAITING 10 SECONDS BEFORE RESTART...
timeout /t 10 /nobreak >nul
goto :eof
