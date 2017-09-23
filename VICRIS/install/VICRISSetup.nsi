; Script generated by the HM NIS Edit Script Wizard.

Var hwnd ; Window handle of the custom page

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "VICRIS"
!define PRODUCT_VERSION "1.0"
!define PRODUCT_DIR_REGKEY "c:\Software\Microsoft\Windows\CurrentVersion\App Paths\VICRIS.exe"
!define PRODUCT_UNINST_KEY "c:\Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"
!define env_hklm 'HKLM "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"'

SetCompressor /SOLID zlib
XPStyle on

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "${NSISDIR}\Contrib\Graphics\Icons\orange-install.ico"
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\orange-uninstall.ico"

!macro MUI_CUSTOM_PAGE
  Page custom SetCustom LeaveCustom " - Settaggio Indirizzo IP"
!macroend

; Welcome page
!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_CUSTOM_PAGE
; Components page
!insertmacro MUI_PAGE_COMPONENTS
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
!define MUI_FINISHPAGE_RUN "$INSTDIR\VICRIS.exe"
!insertmacro MUI_PAGE_FINISH

; Uninstaller pages
!insertmacro MUI_UNPAGE_INSTFILES

; Language files
!insertmacro MUI_LANGUAGE "Italian"
LangString TEXT_IO_TITLE ${LANG_ITALIAN} "Settaggio Indirizzo IP"
LangString TEXT_IO_SUBTITLE ${LANG_ITALIAN} "Immettere l'indirizzo IP del server Oracle dove risiede il database"

; Reserve files
!insertmacro MUI_RESERVEFILE_INSTALLOPTIONS

; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "VicrisSetup.exe"
InstallDir "$PROGRAMFILES\VICRIS\"
ShowInstDetails show
ShowUnInstDetails show

Section "VICRIS" SEC01
SectionIn RO
  SetShellVarContext all
  SetOutPath "$INSTDIR"
  SetOverwrite on
  File "c:\Software\Delphi\Delphi7\VICRIS\vicris\VICRIS\exe\VICRIS.exe"
  SetOverwrite ifnewer
  File "c:\Software\Delphi\Delphi7\SharedLibrary\midas.dll"
  File "c:\Software\Delphi\Delphi7\SharedLibrary\msvcr71.dll"
  File "c:\Software\Delphi\Delphi7\SharedLibrary\ssleay32.dll"
  File "c:\Software\Delphi\Delphi7\SharedLibrary\libeay32.dll"
  RMDir /r "$SMPROGRAMS\VICRIS"
  CreateDirectory "$SMPROGRAMS\VICRIS"
  CreateShortCut "$SMPROGRAMS\VICRIS\VICRIS.lnk" "$INSTDIR\VICRIS.exe"
  SetOverwrite off
  CreateShortCut "$QUICKLAUNCH\VICRIS.lnk" "$INSTDIR\VICRIS.exe"
  CreateShortCut "$DESKTOP\VICRIS.lnk" "$INSTDIR\VICRIS.exe"
SectionEnd

Section "Users Admin" SEC02
;SectionIn RO
  SetShellVarContext all
  SetOutPath "$INSTDIR"
  SetOverwrite on
  File "c:\Software\Delphi\Delphi7\VICRIS\vicris\User\exe\User.exe"
  SetOverwrite ifnewer
  CreateShortCut "$SMPROGRAMS\VICRIS\Users Admin.lnk" "$INSTDIR\User.exe"
  SetOverwrite off
  CreateShortCut "$QUICKLAUNCH\Users Admin.lnk" "$INSTDIR\User.exe"
  CreateShortCut "$DESKTOP\Users Admin.lnk" "$INSTDIR\User.exe"
SectionEnd

Section /o "File di Oracle" SEC03
;SectionIn RO
  SetOutPath "$INSTDIR\Oracle"
  SetOverwrite on
  File "c:\Software\Delphi\Delphi7\VICRIS\vicris\VICRIS\install\instantclient\orannzsbb10.dll"
  File "c:\Software\Delphi\Delphi7\VICRIS\vicris\VICRIS\install\instantclient\oraociei10.dll"
  File "c:\Software\Delphi\Delphi7\VICRIS\vicris\VICRIS\install\instantclient\oci.dll"
  File "c:\Software\Delphi\Delphi7\VICRIS\vicris\VICRIS\install\instantclient\tnsnames.ora"
  ; Scrivo le chiavi di registro
  ReadRegStr $0 HKLM "c:\Software\ORACLE" "ORACLE_HOME"
  StrCmp $0 "" 0 +3
    WriteRegStr HKLM "c:\Software\ORACLE" "ORACLE_HOME"      "$INSTDIR\Oracle"
    WriteRegStr HKLM "c:\Software\ORACLE" "TNS_ADMIN"        "$INSTDIR\Oracle"
  WriteRegStr HKLM "c:\Software\ORACLE"   "NLS_LANG"         "ITALIAN_ITALY.WE8ISO8859P15"
  WriteRegStr HKLM "c:\Software\ORACLE"   "NLS_SORT"         "BINARY"
  WriteRegStr HKLM "c:\Software\ORACLE"   "NLS_DATE_FORMAT"  "DD-MM-YYYY"
  WriteRegStr HKLM "c:\Software\ORACLE"   "ORACLE_HOME_NAME" "OraHome"
SectionEnd

Section -AdditionalIcons
  CreateShortCut "$SMPROGRAMS\VICRIS\Uninstall.lnk" "$INSTDIR\Uninstall.exe"
SectionEnd

Section -Post
  CallInstDll "$INSTDIR\midas.dll" /NOUNLOAD DllRegisterServer

  ReadINIStr $R7 "$PLUGINSDIR\InstOpt.ini" "Field 4" "State" ; IP Oracle
  ReadINIStr $R9 "$PLUGINSDIR\InstOpt.ini" "Field 2" "State" ; CheckBox Aggiorno Si/No IP Oracle
  
  StrCmp $R9 "1" 0 +7
    Push ORACLEADDRESS
    Push $R7
    Push all
    Push all
    Push $INSTDIR\Oracle\tnsnames.ora
    Call AdvReplaceInFile

  WriteUninstaller "$INSTDIR\Uninstall.exe"
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\VICRIS.exe"

  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\Uninstall.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\VICRIS.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
SectionEnd

; Section descriptions
!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC01} "File dell'applicazione VICRIS"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC02} "File dell'applicazione Users Admin"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC03} "File di Oracle"
!insertmacro MUI_FUNCTION_DESCRIPTION_END

Function SetCustom ;FunctionName defined with Page command
  ;Display the Install Options dialog
  !insertmacro MUI_HEADER_TEXT "$(TEXT_IO_TITLE)" "$(TEXT_IO_SUBTITLE)"
  InstallOptions::initDialog /NOUNLOAD "$PLUGINSDIR\InstOpt.ini"
  ; In this mode InstallOptions returns the window handle so we can use it
  Pop $hwnd
  ; Now show the dialog and wait for it to finish
  InstallOptions::show
  Pop $0
FunctionEnd

Function LeaveCustom ;FunctionName defined with Page command
  ReadINIStr $0 "$PLUGINSDIR\InstOpt.ini" "Settings" "State"
  StrCmp $0 0 validate ; Next button?
  StrCmp $0 2 AggIPOracle  ;  aggiorna ip oracle?
  Abort ; Return to the page
  
AggIPOracle:
  ReadINIStr $0 "$PLUGINSDIR\InstOpt.ini" "Field 2" "State"
  GetDlgItem $1 $hwnd 1203 ; IP Oracle Text control (1200 + field 4 - 1)
  EnableWindow $1 $0
  ; Add the disabled flag too so when we return to this page it's disabled again
  StrCmp $0 0 0 +3

    WriteINIStr "$PLUGINSDIR\InstOpt.ini" "Field 4" "Flags" "DISABLED"
    Goto +2

    WriteINIStr "$PLUGINSDIR\InstOpt.ini" "Field 4" "Flags" ""
  Abort ; Return to the page

validate:

FunctionEnd

Function .onInit
  SetShellVarContext all

  GetTempFileName $R0
  File /oname=$R0 "pv.exe"
  nsExec::ExecToStack '"$R0" VICRIS.exe'
  Pop $0 # return value/error/timeout
  Pop $1 # printed text
  StrCmp $0 "0" 0 DontAbort
    MessageBox MB_OK "VICRIS � in esecuzione! Uscire dal programma e rieseguire l'aggiornamento."
    Abort
  DontAbort:
  
  Push $INSTDIR
  SetOutPath $PLUGINSDIR
  File "InstOpt.ini"
FunctionEnd

Function .onInstSuccess
FunctionEnd

Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "$(^Name) � stato completamente rimosso dal tuo computer."
FunctionEnd

Function un.onInit
  SetShellVarContext all
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "Sei sicuro di voler completamente rimuovere $(^Name) e tutti i suoi componenti?" IDYES +2
  Abort
FunctionEnd

Section Uninstall
  SetShellVarContext all
  Delete "$INSTDIR\Uninstall.exe"
  Delete "$INSTDIR\VICRIS.exe"
  Delete "$INSTDIR\User.exe"
  Delete "$INSTDIR\midas.dll"
  Delete "$INSTDIR\msvcr71.dll"
  Delete "$INSTDIR\ssleay32.dll"
  Delete "$INSTDIR\libeay32.dll"

  Delete "$SMPROGRAMS\VICRIS\Uninstall.lnk"
  Delete "$SMPROGRAMS\VICRIS\VICRIS.lnk"
  Delete "$SMPROGRAMS\VICRIS\Users Admin.lnk"

  Delete "$QUICKLAUNCH\VICRIS.lnk"
  Delete "$QUICKLAUNCH\Users Admin.lnk"
  Delete "$DESKTOP\VICRIS.lnk"

  Delete "$INSTDIR\Oracle\orannzsbb10.dll"
  Delete "$INSTDIR\Oracle\oraociei10.dll"
  Delete "$INSTDIR\Oracle\oci.dll"
  Delete "$INSTDIR\Oracle\tnsnames.ora"
  Delete "$INSTDIR\Oracle"
  
  ; Elimino le chiavi di registro
;  DeleteRegKey HKLM "c:\Software\ORACLE"

  RMDir /r "$SMPROGRAMS\VICRIS"
  RMDir "$INSTDIR\Oracle"
  RMDir "$INSTDIR"

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
SectionEnd

; Inizio definizione delle Funzioni di supporto utilizzate

Function AdvReplaceInFile
Exch $0 ;file to replace in
Exch
Exch $1 ;number to replace after
Exch
Exch 2
Exch $2 ;replace and onwards
Exch 2
Exch 3
Exch $3 ;replace with
Exch 3
Exch 4
Exch $4 ;to replace
Exch 4
Push $5 ;minus count
Push $6 ;universal
Push $7 ;end string
Push $8 ;left string
Push $9 ;right string
Push $R0 ;file1
Push $R1 ;file2
Push $R2 ;read
Push $R3 ;universal
Push $R4 ;count (onwards)
Push $R5 ;count (after)
Push $R6 ;temp file name

  GetTempFileName $R6
  FileOpen $R1 $0 r ;file to search in
  FileOpen $R0 $R6 w ;temp file
   StrLen $R3 $4
   StrCpy $R4 -1
   StrCpy $R5 -1

loop_read:
 ClearErrors
 FileRead $R1 $R2 ;read line
 IfErrors exit

   StrCpy $5 0
   StrCpy $7 $R2

loop_filter:
   IntOp $5 $5 - 1
   StrCpy $6 $7 $R3 $5 ;search
   StrCmp $6 "" file_write2
   StrCmp $6 $4 0 loop_filter

 StrCpy $8 $7 $5 ;left part
 IntOp $6 $5 + $R3
 StrCpy $9 $7 "" $6 ;right part
 StrCpy $7 $8$3$9 ;re-join

IntOp $R4 $R4 + 1
StrCmp $2 all file_write1
StrCmp $R4 $2 0 file_write2
IntOp $R4 $R4 - 1

IntOp $R5 $R5 + 1
StrCmp $1 all file_write1
StrCmp $R5 $1 0 file_write1
IntOp $R5 $R5 - 1
Goto file_write2

file_write1:
 FileWrite $R0 $7 ;write modified line
Goto loop_read

file_write2:
 FileWrite $R0 $R2 ;write unmodified line
Goto loop_read

exit:
  FileClose $R0
  FileClose $R1

   SetDetailsPrint none
  Delete $0
  Rename $R6 $0
  Delete $R6
   SetDetailsPrint both

Pop $R6
Pop $R5
Pop $R4
Pop $R3
Pop $R2
Pop $R1
Pop $R0
Pop $9
Pop $8
Pop $7
Pop $6
Pop $5
Pop $4
Pop $3
Pop $2
Pop $1
Pop $0
FunctionEnd

; GetWindowsVersion
;
; Based on Yazno's function, http://yazno.tripod.com/powerpimpit/
; Updated by Joost Verburg
;
; Returns on top of stack
;
; Windows Version (95, 98, ME, NT x.x, 2000, XP, 2003)
; or
; '' (Unknown Windows Version)
;
; Usagc:\Software
;   Call GetWindowsVersion
;   Pop $R0
;   ; at this point $R0 is "NT 4.0" or whatnot

; Fine della definizione delle funzioni di supporto