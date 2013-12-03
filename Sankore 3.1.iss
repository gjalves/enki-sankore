; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{E63D17F8-D9DA-479D-B9B5-0D101A03703B}
AppName=Open-Sankor�
AppVerName=Open-Sankor�
AppPublisher=Open-Sankore

AppPublisherURL=http://dev.open-sankore.org
AppSupportURL=http://dev.open-sankore.org
AppUpdatesURL=http://dev.open-sankore.org

DefaultDirName={pf}\Open-Sankore
DefaultGroupName=Open-Sankor�

OutputDir=.\install\win32\
OutputBaseFilename=Open-Sankore
SetupIconFile=.\resources\win\uniboard.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"
Name: "fr"; MessagesFile: "compiler:Languages\French.isl"
Name: "gr"; MessagesFile: "compiler:Languages\German.isl"
Name: "it"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "sp"; MessagesFile: "compiler:Languages\Spanish.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[InstallDelete]

Type: files ; Name: "{app}\Open-Sankore.pdb"
Type: filesandordirs ; Name: "{app}\library"
Type: filesandordirs ; Name: "{app}\Microsoft.VC90.CRT"
Type: filesandordirs ; Name: "{app}\plugins"
Type: filesandordirs ; Name: "{app}\i18n"
Type: files ; Name: "{app}\*.dll"

[Files]
Source: "..\Sankore-ThirdParty\microsoft\vcredist_x86.exe"; DestDir:"{tmp}"
Source: "build\win32\release\product\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

;OpenSSL
Source: "..\Sankore-ThirdParty\openssl\win32\libeay32.dll"; DestDir:"{app}"; Flags: ignoreversion
Source: "..\Sankore-ThirdParty\openssl\win32\ssleay32.dll"; DestDir:"{app}"; Flags: ignoreversion

;Qt base dll
Source: "..\Qt-4.8\lib\QtScript4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Qt-4.8\lib\QtGui4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Qt-4.8\lib\QtXml4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Qt-4.8\lib\QtCore4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Qt-4.8\lib\QtWebKit4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Qt-4.8\lib\phonon4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Qt-4.8\lib\QtNetwork4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Qt-4.8\lib\QtSvg4.dll"; DestDir: "{app}"; Flags: ignoreversion

;Qt plugins
Source: "..\Qt-4.8\plugins\accessible\qtaccessiblecompatwidgets4.dll"; DestDir: "{app}\accessible"; Flags: ignoreversion
Source: "..\Qt-4.8\plugins\accessible\qtaccessiblewidgets4.dll"; DestDir: "{app}\accessible"; Flags: ignoreversion
Source: "..\Qt-4.8\plugins\bearer\qgenericbearer4.dll"; DestDir: "{app}\bearer"; Flags: ignoreversion
Source: "..\Qt-4.8\plugins\bearer\qnativewifibearer4.dll"; DestDir: "{app}\bearer"; Flags: ignoreversion
Source: "..\Qt-4.8\plugins\codecs\qcncodecs4.dll"; DestDir: "{app}\codecs"; Flags: ignoreversion
Source: "..\Qt-4.8\plugins\codecs\qjpcodecs4.dll"; DestDir: "{app}\codecs"; Flags: ignoreversion
Source: "..\Qt-4.8\plugins\codecs\qkrcodecs4.dll"; DestDir: "{app}\codecs"; Flags: ignoreversion
Source: "..\Qt-4.8\plugins\codecs\qtwcodecs4.dll"; DestDir: "{app}\codecs"; Flags: ignoreversion
Source: "..\Qt-4.8\plugins\graphicssystems\qglgraphicssystem4.dll"; DestDir: "{app}\graphicssystems"; Flags: ignoreversion
Source: "..\Qt-4.8\plugins\graphicssystems\qtracegraphicssystem4.dll"; DestDir: "{app}\graphicssystems"; Flags: ignoreversion
Source: "..\Qt-4.8\plugins\iconengines\qsvgicon4.dll"; DestDir: "{app}\iconengines"; Flags: ignoreversion
Source: "..\Qt-4.8\plugins\imageformats\qgif4.dll"; DestDir: "{app}\imageformats"; Flags: ignoreversion
Source: "..\Qt-4.8\plugins\imageformats\qico4.dll"; DestDir: "{app}\imageformats"; Flags: ignoreversion
Source: "..\Qt-4.8\plugins\imageformats\qjpeg4.dll"; DestDir: "{app}\imageformats"; Flags: ignoreversion
Source: "..\Qt-4.8\plugins\imageformats\qmng4.dll"; DestDir: "{app}\imageformats"; Flags: ignoreversion
Source: "..\Qt-4.8\plugins\imageformats\qsvg4.dll"; DestDir: "{app}\imageformats"; Flags: ignoreversion
Source: "..\Qt-4.8\plugins\imageformats\qtiff4.dll"; DestDir: "{app}\imageformats"; Flags: ignoreversion
Source: "..\Qt-4.8\plugins\phonon_backend\phonon_ds94.dll"; DestDir: "{app}\phonon_backend"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

;qt multimedia plugins
;Source: "c:\OpenSankore\plugins\mediaservice\dsengine.dll"; DestDir: "c:\OpenSankore\plugins\mediaservice"; Flags: ignoreversion
;Source: "c:\OpenSankore\plugins\mediaservice\dsengined.dll"; DestDir: "c:\OpenSankore\plugins\mediaservice"; Flags: ignoreversion
;Source: "c:\OpenSankore\plugins\mediaservice\qtmedia_audioengine.dll"; DestDir: "c:\OpenSankore\plugins\mediaservice"; Flags: ignoreversion
;Source: "c:\OpenSankore\plugins\mediaservice\qtmedia_audioengined.dll"; DestDir: "c:\OpenSankore\plugins\mediaservice"; Flags: ignoreversion

;Source: "c:\OpenSankore\plugins\playlistformats\qtmultimediakit_m3u.dll"; DestDir: "c:\OpenSankore\plugins\playlistformats"; Flags: ignoreversion
;Source: "c:\OpenSankore\plugins\playlistformats\qtmultimediakit_m3ud.dll"; DestDir: "c:\OpenSankore\plugins\playlistformats"; Flags: ignoreversion

;fonts for xpdf
Source: "resources\windows\xpdfrc"; DestDir: "{app}"; Flags: ignoreversion
Source: "resources\fonts\*"; DestDir: "{app}\fonts"; Flags: ignoreversion

[Icons]
Name: "{group}\Open-Sankor�"; Filename: "{app}\Open-Sankore.exe"
Name: "{group}\{cm:UninstallProgram,Open-Sankor�}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\Open-Sankor�"; Filename: "{app}\Open-Sankore.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\Open-Sankor�"; Filename: "{app}\Open-Sankore.exe"; Tasks: quicklaunchicon

[Registry]
Root: HKCR; Subkey: ".ubz"; ValueType: string; ValueName: ""; ValueData: "SankoreFile"; Flags: uninsdeletevalue
Root: HKCR; Subkey: "SankoreFile"; ValueType: string; ValueName: ""; ValueData: "Open-Sankore document"; Flags: uninsdeletekey
Root: HKCR; Subkey: "SankoreFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\Open-Sankore.exe,1"
Root: HKCR; Subkey: "SankoreFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\Open-Sankore.exe"" ""%1"""

Root: HKLM; Subkey: "SOFTWARE\Open-Sankore"; ValueType: string; ValueName: "Client application"; ValueData: "{app}\Open-Sankore.exe"; Flags: uninsdeletevalue; Check: (not IsWin64)
Root: HKLM; Subkey: "SOFTWARE\Open-Sankore"; ValueType: dword; ValueName: "Transfer mode"; ValueData: "0"; Flags: uninsdeletevalue; Check: (not IsWin64)
Root: HKLM; Subkey: "SOFTWARE\Open-Sankore"; ValueType: dword; ValueName: "EMF: Hide page"; ValueData: "1"; Flags: uninsdeletevalue; Check: (not IsWin64)
Root: HKLM; Subkey: "SOFTWARE\Open-Sankore\Defaults"; ValueType: dword; ValueName: "PDF: Enabled"; ValueData: "1"; Flags: uninsdeletevalue; Check: (not IsWin64)

Root: HKLM; Subkey: "SOFTWARE\Microsoft\Internet Explorer\Low Rights\DragDrop\{{E63D17F8-D9DA-479D-B9B5-0D101A03703B}"; ValueType: dword; ValueName: "Policy"; ValueData: "3"; Flags: uninsdeletevalue; Check: (not IsWin64)
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Internet Explorer\Low Rights\DragDrop\{{E63D17F8-D9DA-479D-B9B5-0D101A03703B}"; ValueType: string; ValueName: "AppName"; ValueData: "Open-Sankore.exe"; Flags: uninsdeletevalue; Check: (not IsWin64)
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Internet Explorer\Low Rights\DragDrop\{{E63D17F8-D9DA-479D-B9B5-0D101A03703B}"; ValueType: string; ValueName: "AppPath"; ValueData: "{app}"; Flags: uninsdeletevalue; Check: (not IsWin64)

Root: HKLM64; Subkey: "SOFTWARE\Open-Sankore"; ValueType: string; ValueName: "Client application"; ValueData: "{app}\Open-Sankore.exe"; Flags: uninsdeletevalue; Check: IsWin64
Root: HKLM64; Subkey: "SOFTWARE\Open-Sankore"; ValueType: dword; ValueName: "Transfer mode"; ValueData: "0"; Flags: uninsdeletevalue; Check: IsWin64
Root: HKLM64; Subkey: "SOFTWARE\Open-Sankore"; ValueType: dword; ValueName: "EMF: Hide page"; ValueData: "1"; Flags: uninsdeletevalue; Check: IsWin64
Root: HKLM64; Subkey: "SOFTWARE\Open-Sankore\Defaults"; ValueType: dword; ValueName: "PDF: Enabled"; ValueData: "1"; Flags: uninsdeletevalue; Check: IsWin64

Root: HKLM64; Subkey: "SOFTWARE\Wow6432Node\Microsoft\Internet Explorer\Low Rights\DragDrop\{{E63D17F8-D9DA-479D-B9B5-0D101A03703B}"; ValueType: dword; ValueName: "Policy"; ValueData: "3"; Flags: uninsdeletevalue; Check: IsWin64
Root: HKLM64; Subkey: "SOFTWARE\Wow6432Node\Microsoft\Internet Explorer\Low Rights\DragDrop\{{E63D17F8-D9DA-479D-B9B5-0D101A03703B}"; ValueType: string; ValueName: "AppName"; ValueData: "Open-Sankore.exe"; Flags: uninsdeletevalue; Check: IsWin64
Root: HKLM64; Subkey: "SOFTWARE\Wow6432Node\Microsoft\Internet Explorer\Low Rights\DragDrop\{{E63D17F8-D9DA-479D-B9B5-0D101A03703B}"; ValueType: string; ValueName: "AppPath"; ValueData: "{app}"; Flags: uninsdeletevalue; Check: IsWin64

[Run]
Filename: "{tmp}\vcredist_x86.exe";WorkingDir:"{tmp}"; Parameters: "/q:a/c:""VCREDI~3.EXE /q:a /c:""""msiexec /i vcredist.msi /qn"""""""; StatusMsg: Installing CRT ...
Filename: "{app}\Open-Sankore.exe"; Description: "{cm:LaunchProgram,Open-Sankor�}"; Flags: nowait postinstall skipifsilent 

[UninstallDelete]
; cleanup and delete whole installation directory
Name: {app}; Type: filesandordirs

;[Code]
;function isProcessorX64: Boolean;
;begin
;  Result := (ProcessorArchitecture = paX64);
;end;

;function isProcessorNotX64: Boolean;
;begin
;	Result := not isProcessorX64;
;end;

