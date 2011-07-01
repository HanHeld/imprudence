; InWorldz inno setup installer script by McCabe Maxsted
; This script only works with VS2005, currently

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)

; These will change
AppId={{D7736EE8-AFCE-4735-BBE3-652CDFBBFCA8}
AppName=Imprudence
AppVerName=Imprudence Viewer 1.4.0 beta 1 (SSE2 optimized)
DefaultDirName={pf}\Imprudence
DefaultGroupName=Imprudence Viewer
VersionInfoProductName=Imprudence Viewer
OutputBaseFilename=Imprudence-1.4.0-beta1-(SSE2-optimized)
VersionInfoVersion=1.4.0
VersionInfoTextVersion=1.4.0
VersionInfoProductVersion=1.4.0
AppVersion=1.4.0
VersionInfoCopyright=2011

; These won't change
VersionInfoCompany=Imprudence
AppPublisher=The Imprudence Project
AppPublisherURL=http://kokuaviewer.org
AppSupportURL=http://kokuaviewer.org
AllowNoIcons=true
InfoAfterFile=..\..\..\..\..\README.txt
OutputDir=C:\imprudence_installers
SetupIconFile=..\windows\imp_icon.ico
Compression=lzma2/ultra64
InternalCompressLevel=ultra64
SolidCompression=true
;PrivilegesRequired=poweruser
AllowRootDirectory=true
WizardImageFile=..\windows\imprudence_installer_icon_left.bmp
WizardSmallImageFile=..\windows\imprudence_installer_icon_right.bmp
SetupLogging=true
RestartIfNeededByRun=false
AlwaysRestart=false

[Languages]
Name: english; MessagesFile: compiler:Default.isl

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: checkedonce
Name: quicklaunchicon; Description: {cm:CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: checkedonce
Name: slurlassociate; Description: Associate Imprudence with SLURLs; GroupDescription: Associations:; Languages: ; Flags: checkedonce
; TODO: use scripting for something like this on uninstall:
; Name: uninstallsettings; Description: Remove user settings; Flags: checkablealone; Languages: ; GroupDescription: Uninstall:

[Files]
Source: ..\..\..\build-vc80\newview\release\package\imprudence.exe; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\character\*; DestDir: {app}\character; Flags: ignoreversion recursesubdirs createallsubdirs
Source: ..\..\..\build-vc80\newview\release\package\fonts\*; DestDir: {app}\fonts; Flags: ignoreversion recursesubdirs createallsubdirs
Source: ..\..\..\build-vc80\newview\release\package\app_settings\*; DestDir: {app}\app_settings; Flags: ignoreversion recursesubdirs createallsubdirs
Source: ..\..\..\build-vc80\newview\release\package\skins\*; DestDir: {app}\skins; Flags: ignoreversion recursesubdirs createallsubdirs
Source: ..\..\..\build-vc80\newview\release\package\doc\*; DestDir: {app}\doc; Flags: ignoreversion recursesubdirs createallsubdirs
Source: ..\..\..\build-vc80\newview\release\package\llplugin\*; DestDir: {app}\llplugin; Flags: ignoreversion recursesubdirs createallsubdirs
Source: ..\..\..\build-vc80\newview\release\package\alut.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\ChangeLog.txt; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\dbghelp.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\featuretable.txt; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\gpu_table.txt; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\imprudence.url; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libapr-1.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libapriconv-1.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libaprutil-1.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libhunspell.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\llcommon.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\llkdu.dll.2.config; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\openal32.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\OpenJPEG.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\SLPlugin.exe; DestDir: {app}; Flags: ignoreversion

; Gstreamer-specific files below
Source: ..\..\..\build-vc80\newview\release\package\lib\*; DestDir: {app}\lib; Flags: ignoreversion recursesubdirs createallsubdirs
Source: ..\..\..\build-vc80\newview\release\package\avcodec-gpl-52.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\avdevice-gpl-52.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\avfilter-gpl-1.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\avformat-gpl-52.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\avutil-gpl-50.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\iconv.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\liba52-0.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libbz2.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libcelt-0.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libdca-0.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libexpat-1.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libfaad-2.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libFLAC-8.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libgcrypt-11.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libgio-2.0-0.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libglib-2.0-0.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libgmodule-2.0-0.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libgnutls-26.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libgobject-2.0-0.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libgpg-error-0.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libgstapp-0.10.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libgstaudio-0.10.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libgstbase-0.10.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libgstcontroller-0.10.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libgstdataprotocol-0.10.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libgstfft-0.10.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libgstinterfaces-0.10.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libgstnet-0.10.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libgstnetbuffer-0.10.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libgstpbutils-0.10.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libgstphotography-0.10.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libgstreamer-0.10.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libgstriff-0.10.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libgstrtp-0.10.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libgstrtsp-0.10.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libgstsdp-0.10.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libgstsignalprocessor-0.10.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libgsttag-0.10.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libgstvideo-0.10.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libgthread-2.0-0.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libmms-0.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libmpeg2-0.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libneon-27.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libogg-0.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\liboil-0.3-0.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libsoup-2.4-1.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libtasn1-3.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libtheora-0.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libtheoradec-1.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libvorbis-0.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libvorbisenc-2.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libvorbisfile-3.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libwavpack-1.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libx264-67.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libxml2-2.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\libxml2.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\SDL.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\xvidcore.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\z.dll; DestDir: {app}; Flags: ignoreversion

; Voice files
Source: ..\..\..\build-vc80\newview\release\package\ortp.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\SLVoice.exe; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\vivoxsdk.dll; DestDir: {app}; Flags: ignoreversion
Source: ..\..\..\build-vc80\newview\release\package\wrap_oal.dll; DestDir: {app}; Flags: ignoreversion

; VC++ 2005 SP1 x86 and VC++ 2010 SP1 x86 redist
; TODO: add checking for VS2005. See http://blogs.msdn.com/b/astebner/archive/2007/01/16/mailbag-how-to-detect-the-presence-of-the-vc-8-0-runtime-redistributable-package.aspx and
Source: ..\windows\vcredist_x86_VS2005_SP1.exe; DestDir: {tmp}; DestName: vcredist_x86_VS2005_SP1.exe
Source: ..\windows\vcredist_x86_VS2010_SP1.exe; DestDir: {tmp}; DestName: vcredist_x86_VS2010_SP1.exe

; Old files we don't use anymore:
; Source: ..\..\..\build-vc80\newview\release\package\dronesettings.xml; DestDir: {app}; Flags: ignoreversion
; Source: ..\..\..\build-vc80\newview\release\package\volume_settings.xml; DestDir: {app}; Flags: ignoreversion
; Source: ..\..\..\build-vc80\newview\release\package\srtp.dll; DestDir: {app}; Flags: ignoreversion
; Source: ..\..\..\build-vc80\newview\release\package\ssleay32.dll; DestDir: {app}; Flags: ignoreversion
; Source: ..\..\..\build-vc80\newview\release\package\tntk.dll; DestDir: {app}; Flags: ignoreversion
; Source: ..\..\..\build-vc80\newview\release\package\libeay32.dll; DestDir: {app}; Flags: ignoreversion
; Source: ..\..\..\build-vc80\newview\release\package\lsl_guide.html; DestDir: {app}; Flags: ignoreversion

; NOTE: Don't use "Flags: ignoreversion" on any shared system files
;Source: ..\..\..\build-vc80\newview\release\package\msvcr71.dll; DestDir: {app}; Flags: ignoreversion; MinVersion: 0,6.01; Tasks: ; Languages:

[Registry]
Root: HKCR; Subkey: secondlife; ValueType: string; Flags: uninsdeletekey deletekey; Tasks: slurlassociate; ValueName: (default); ValueData: URL:Second Life
Root: HKCR; Subkey: secondlife; ValueType: string; Flags: uninsdeletekey deletekey; Tasks: slurlassociate; ValueName: URL Protocol
Root: HKCR; Subkey: secondlife\DefaultIcon; Flags: uninsdeletekey deletekey; ValueType: string; Tasks: slurlassociate; ValueData: {app}\imprudence.exe
Root: HKCR; Subkey: secondlife\shell\open\command; ValueType: expandsz; Flags: uninsdeletekey deletekey; Tasks: slurlassociate; ValueData: "{app}\imprudence.exe --settings settings_imprudence.xml -url ""%1"""; Languages: 
; Root: HKCU; Subkey: Environment; ValueType: string; ValueName: GST_PLUGIN_PATH; Flags: deletevalue uninsdeletevalue; ValueData: {app}\lib
; Root: HKCU; Subkey: Environment; ValueType: expandsz; ValueName: PATH; ValueData: {app}

[Icons]
Name: {group}\{cm:UninstallProgram,Imprudence}; Filename: {uninstallexe}
Name: {commondesktop}\Imprudence; Filename: {app}\imprudence.exe; Tasks: desktopicon; Parameters: --settings settings_imprudence.xml; WorkingDir: {app}; IconIndex: 0
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\Imprudence; Filename: {app}\imprudence.exe; Tasks: quicklaunchicon; Parameters: --settings settings_imprudence.xml; WorkingDir: {app}
Name: {group}\Imprudence; Filename: {app}\imprudence.exe; WorkingDir: {app}; Comment: imprudence; IconIndex: 0; Parameters: --settings settings_imprudence.xml

[Run]
Filename: {app}\imprudence.exe; WorkingDir: {app}; Flags: nowait postinstall
Filename: {app}\imprudence.url; WorkingDir: {app}; Flags: nowait postinstall shellexec; Description: See what makes Imprudence different
Filename: {tmp}\vcredist_x86_VS2005_SP1.exe; Parameters: "/q:a /c:""VCREDI~1.EXE /q:a /c:""""msiexec /i vcredist.msi /qn"""" """; Flags: runhidden
Filename: {tmp}\vcredist_x86_VS2010_SP1.exe; Parameters: "/q /norestart"; Check: Needs2010Redist; Flags: runhidden

[UninstallDelete]
Name: {userappdata}\Imprudence\user_settings\password.dat; Type: files; Languages: 
Name: {userappdata}\Imprudence\user_settings\settings.xml; Type: files; Languages: 
Name: {userappdata}\Imprudence\user_settings\settings_imprudence.xml; Type: files; Languages: 
; 1.2 and lower cache location:
Name: {userappdata}\Imprudence\cache; Type: filesandordirs
; 1.3 and higher cache location:
Name: {localappdata}\Imprudence\cache; Type: filesandordirs
Name: {userappdata}\Imprudence\logs; Type: filesandordirs
Name: {userappdata}\Imprudence\browser_profile; Type: filesandordirs
Name: C:\Users\{username}\.gstreamer-0.10; Type: filesandordirs
Name: C:\Documents and Settings\{username}\.gstreamer-0.10; Type: filesandordirs

[InstallDelete]
; Name: {app}\*.dll; Type: files; Tasks: ; Languages:
Name: {app}\lib\gstreamer-plugins\*; Type: filesandordirs; Tasks: ; Languages: 
; Name: {app}\skins\default\xui\*; Type: filesandordirs; Tasks: ; Languages:
; Old xui skin files can cause bugs, always kill them
Name: {app}\skins\silver\xui\en-us\*; Type: filesandordirs; Tasks: ; Languages:
Name: {app}\app_settings\mozilla; Type: filesandordirs; Tasks: ; Languages:
Name: {app}\app_settings\mozilla_debug; Type: filesandordirs; Tasks: ; Languages:
Name: {app}\app_settings\viewerversion.xml; Type: filesandordirs; Tasks: ; Languages:
Name: C:\Documents and Settings\{username}\.gstreamer-0.10\*; Type: filesandordirs
Name: C:\Users\{username}\.gstreamer-0.10\*; Type: filesandordirs
; Breaks the browser if installing on top of 1.1:
Name: {app}\gksvggdiplus.dll; Type: files; Tasks: ; Languages: 

; Pre-plugin files:
Name: {app}\charset.dll; Type: files; Tasks: ; Languages: 
Name: {app}\freebl3.dll; Type: files; Tasks: ; Languages: 
Name: {app}\glew32.dll; Type: files; Tasks: ; Languages: 
Name: {app}\iconv.dll; Type: files; Tasks: ; Languages: 
Name: {app}\intl.dll; Type: files; Tasks: ; Languages: 
Name: {app}\js3250.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libcairo-2.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libfaad-2.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libgcrypt-11.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libgio-2.0-0.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libglib-2.0-0.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libgmodule-2.0-0.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libgnutls-26.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libgobject-2.0-0.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libgpg-error-0.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libgstapp.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libgstaudio.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libgstaudio-0.10.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libgstbase-0.10.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libgstcdda.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libgstcontroller-0.10.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libgstdataprotocol-0.10.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libgstdshow.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libgstfft.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libgstinterfaces.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libgstnet-0.10.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libgstnetbuffer.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libgstpbutils.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libgstreamer-0.10.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libgstriff.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libgstrtp.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libgstrtsp.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libgstsdp.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libgsttag.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libgstvideo.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libgthread-2.0-0.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libjpeg.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libmp3lame-0.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libneon-27.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libogg-0.dll; Type: files; Tasks: ; Languages: 
Name: {app}\liboil-0.3-0.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libopenjpeg-2.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libpng12-0.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libschroedinger-1.0-0.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libspeex-1.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libtheora-0.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libvorbis-0.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libvorbisenc-2.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libxml2-2.dll; Type: files; Tasks: ; Languages: 
Name: {app}\libxml2.dll; Type: files; Tasks: ; Languages: 
Name: {app}\nspr4.dll; Type: files; Tasks: ; Languages: 
Name: {app}\nss3.dll; Type: files; Tasks: ; Languages: 
Name: {app}\nssckbi.dll; Type: files; Tasks: ; Languages: 
Name: {app}\plc4.dll; Type: files; Tasks: ; Languages: 
Name: {app}\plds4.dll; Type: files; Tasks: ; Languages: 
Name: {app}\RELEASE_NOTES.txt; Type: files; Tasks: ; Languages: 
Name: {app}\smime3.dll; Type: files; Tasks: ; Languages: 
Name: {app}\softokn3.dll; Type: files; Tasks: ; Languages: 
Name: {app}\ssl3.dll; Type: files; Tasks: ; Languages: 
Name: {app}\xpcom.dll; Type: files; Tasks: ; Languages: 
Name: {app}\xul.dll; Type: files; Tasks: ; Languages: 
Name: {app}\xvidcore.dll; Type: files; Tasks: ; Languages: 
Name: {app}\zlib1.dll; Type: files; Tasks: ; Languages: 

; We don't distribute the CRT like this anymore; kill old files
Name: {app}\SLPlugin.exe.config; Type: files; Tasks: ; Languages:
Name: {app}\Microsoft.VC80.CRT.manifest; Type: files; Tasks: ; Languages:
Name: {app}\msvcp80.dll; Type: files; Tasks: ; Languages:
Name: {app}\msvcr80.dll; Type: files; Tasks: ; Languages:
Name: {app}\msvcr71.dll; Type: files; Tasks: ; Languages:
Name: {app}\imprudence.exe.config; Type: files; Tasks: ; Languages:


[Code]
// [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\VisualStudio\10.0\VC\VCRedist\x86] 
//   Installed = 1 (REG_DWORD)
function IsVS2010RedistInstalled(): Boolean;
var
  V: Cardinal;
  Success: Boolean;
begin
  if IsWin64 then begin
    Success := RegQueryDWordValue(HKLM64, 'SOFTWARE\Microsoft\VisualStudio\10.0\VC\VCRedist\x86', 'Installed', V);
  end else begin
    Success := RegQueryDWordValue(HKLM, 'SOFTWARE\Microsoft\VisualStudio\10.0\VC\VCRedist\x86', 'Installed', V);
  end

  if Success = TRUE then begin
    if V = 1 then begin
      Result := TRUE;
    end else begin
      Result := FALSE;
    end
  end else begin
    Result := FALSE;
  end
end;

function Needs2010Redist(): Boolean;
begin
  Result := (IsVS2010RedistInstalled = FALSE);
end;
