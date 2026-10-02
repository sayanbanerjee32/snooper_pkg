#define MyAppName "Snooper"
#define MyAppVersion "0.0.1"
#define MyAppPublisher "Sayan Banerjee"
#define MyAppURL "https://github.com/sayanbanerjee32/snooper_pkg"
#define MyAppExeName "Snooper.exe"

[Setup]
; Never change this ID after the first public release.
AppId=SnooperPkg.40385d3d-85aa-4bca-922b-a3d6dc026e95

AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}

; Per-user: no administrator/UAC prompt required.
PrivilegesRequired=lowest

DefaultDirName={localappdata}\Programs\{#MyAppName}
DefaultGroupName={#MyAppName}

OutputDir=output
OutputBaseFilename=Snooper-Setup-{#MyAppVersion}

Compression=lzma2
SolidCompression=yes
WizardStyle=modern

InfoBeforeFile="info_before.txt"
UsePreviousTasks=no

UninstallDisplayName={#MyAppName}
UninstallDisplayIcon={app}\{#MyAppExeName}

[Tasks]
Name: "startup"; Description: "Start Snooper automatically when I sign in (recommended)"; \
    GroupDescription: "Startup options:"

[Files]
Source: "..\dist\Snooper\*"; DestDir: "{app}"; \
    Flags: recursesubdirs createallsubdirs ignoreversion

[Icons]
Name: "{autoprograms}\{#MyAppName}"; \
    Filename: "{app}\{#MyAppExeName}"

Name: "{autoprograms}\{#MyAppName}\Uninstall {#MyAppName}"; \
    Filename: "{uninstallexe}"

[Registry]
; This creates a per-user login startup entry only when the user selected it.
; It is automatically removed by the uninstaller.
Root: HKCU; Subkey: "Software\Microsoft\Windows\CurrentVersion\Run"; \
    ValueType: string; ValueName: "{#MyAppName}"; \
    ValueData: """{app}\{#MyAppExeName}"""; \
    Tasks: startup; Flags: uninsdeletevalue

[Run]
Filename: "{app}\{#MyAppExeName}"; \
    Description: "Launch {#MyAppName}"; \
    Flags: nowait postinstall skipifsilent unchecked

[UninstallRun]
Filename: "{cmd}"; Parameters: "/C taskkill /IM Snooper.exe /F"; \
    Flags: runhidden waituntilterminated; RunOnceId: "KillSnooper"