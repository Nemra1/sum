#define MyAppName "S Ultimate Messenger"
#define MyAppVersion "0.2.0"
#define MyAppPublisher "Tobias Zeising"
#define MyAppURL "http://www.sum-messenger.org"
#define LaunchProgram "Starte S Ultimate Messenger nach der Installation"
#define DesktopIcon "Verkn�pfung auf dem Desktop"
#define CreateDesktopIcon "Wollen Sie eine Verkn�pfung auf dem Desktop erstellen?"

[Setup]
AppId={{F3E30478-2D70-4CBC-AB4F-0B7A0A4D44AB}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
Compression=lzma
SolidCompression=yes
OutputDir=.
OutputBaseFilename=sum-setup-{#MyAppVersion}

[Languages]
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Files]
Source: "bin/releases/SUM/win/SUM/*"; Excludes: "ffmpegsumo.dll,libEGL.dll,libGLESv2.dll" ; DestDir: "{app}"; Flags: ignoreversion recursesubdirs
Source: "app/favicon.ico"; DestDir: "{app}"; DestName: "icon.ico"; Flags: ignoreversion

[Tasks]
Name: "desktopicon"; Description: "{#CreateDesktopIcon}"; GroupDescription: "{#DesktopIcon}"

[Icons]
Name: "{group}\SUM - S Ultimate Messenger"; Filename: "{app}\SUM.exe"; WorkingDir: "{app}"; IconFilename: "{app}/icon.ico"
Name: "{userstartup}\SUM - S Ultimate Messenger"; Filename: "{app}\SUM.exe"; WorkingDir: "{app}"; IconFilename: "{app}/icon.ico"
Name: "{userdesktop}\SUM - S Ultimate Messenger"; Filename: "{app}\SUM.exe"; WorkingDir: "{app}"; IconFilename: "{app}/icon.ico"; Tasks: desktopicon

[Run]
Filename: "{app}\SUM.exe"; WorkingDir: "{app}"; Description: {#LaunchProgram}; Flags: postinstall shellexec