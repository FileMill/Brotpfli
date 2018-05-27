[Setup]
AppName=Brotpfli
AppVerName=Brotpfli 1.2
AppPublisher=Sylde.net
AppPublisherURL=http://sylde.net
DefaultDirName={localappdata}\Brotpfli
DisableDirPage=yes
DisableReadyPage=no
DisableFinishedPage=no
Compression=lzma/ultra
SolidCompression=yes
DisableProgramGroupPage=true
CreateUninstallRegKey=true
Uninstallable=true
UninstallDisplayIcon={app}\FileMill.exe
SetupIconFile=compress.ico
ShowLanguageDialog=no
AllowCancelDuringInstall=no
PrivilegesRequired=lowest
OutputBaseFilename=Brotpfli.1.2.Setup

[Files]
Source: "Brotpfli\*"; DestDir: "{app}"; Flags: overwritereadonly ignoreversion recursesubdirs
Source: "licence.txt"; DestDir: "{app}"; Flags: overwritereadonly ignoreversion recursesubdirs

[Run]
Filename: "{app}\licence.txt"; Description: "Show licence"; Flags: postinstall shellexec nowait
Filename: "{app}\FileMill.exe"; Description: "Start Brotpfli"; Flags: postinstall nowait

[Icons]
Name: "{userdesktop}\Brotpfli"; Filename: "{app}\FileMill.exe"; WorkingDir: "{app}"
Name: "{userstartmenu}\Brotpfli"; Filename: "{app}\FileMill.exe"; WorkingDir: "{app}"

[UninstallDelete]
Type: filesandordirs; Name: "{app}"

[code]
function UpdateReadyMemo(Space, NewLine, MemoUserInfoInfo, MemoDirInfo, MemoTypeInfo, MemoComponentsInfo, MemoGroupInfo, MemoTasksInfo: String): String;
var
  s_MessageChemin:String;
begin
  s_MessageChemin:='Brotpfli will be installed in:';
  Result:=s_MessageChemin+#13+ExpandConstant('{app}');
end;