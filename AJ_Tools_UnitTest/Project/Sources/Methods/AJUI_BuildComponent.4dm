//%attributes = {"invisible":true}

  // ----------------------------------------------------
  // User name (OS): Gary Criblez
  // Date and time: 26.06.19, 16:43:41
  // ----------------------------------------------------
  // Method: AJUI_BuildComponent
  // Description
  // This method generates a version of the component
  //
  // Parameters
  // ----------------------------------------------------
  // Copyrights (C) AJAR SA - 2019

C_TEXT:C284($projectMethodPath_t)  // text variables
C_TEXT:C284($code_t)
C_TEXT:C284($1;$method)
$method:=$1

$projectMethodPath_t:=METHOD Get path:C1164(Path project method:K72:1;$method;*)
METHOD GET CODE:C1190($projectMethodPath_t;$code_t;*)  // code of the method "tip_release"

$positionStart_l:=Position:C15("$version_t:=";$code_t)
$positionStart_l:=Position:C15("\"";$code_t;$positionStart_l+1)
$positionEnd_l:=Position:C15("GMT\r";$code_t;$positionStart_l+1)-$positionStart_l

$previousReleaseNumber_t:=Substring:C12($code_t;$positionStart_l;$positionEnd_l+3)  // "1.0-Build52017"  // 2016-02-01T23:00:00Z


$buildRelease_t0:=Substring:C12($previousReleaseNumber_t;Position:C15("-Build";$previousReleaseNumber_t))  //-Build52017"  // 2016-02-01T23:00:00Z
$positionStartNumber_l:=Position:C15("d";$buildRelease_t0)
$lengthNumber_l:=Position:C15("\"";$buildRelease_t0)-$positionStartNumber_l
$buildRelease_t:=Substring:C12($buildRelease_t0;$positionStartNumber_l+1;$lengthNumber_l)
$buildRelease_l:=Num:C11(Replace string:C233($buildRelease_t;"-Build";""))+1


$releaseNumber_t:=Substring:C12($previousReleaseNumber_t;1;Position:C15("-Build";$previousReleaseNumber_t)-1)  //1.0
$releaseNumber_t:=$releaseNumber_t+"-Build"+String:C10($buildRelease_l)  // 1.0-Build32
$releaseNumber_t:=$releaseNumber_t+"\""+"// "+String:C10(Current date:C33;Date RFC 1123:K1:11;Current time:C178)  //

$code_t:=Replace string:C233($code_t;$previousReleaseNumber_t;$releaseNumber_t)


METHOD SET CODE:C1194($projectMethodPath_t;$code_t;*)

If (Application type:C494=4D Remote mode:K5:5)
Else 
	$path_t:=Get 4D folder:C485(Database folder:K5:14;*)+"Settings"+Folder separator:K24:12+"buildApp.4DSettings"
	BUILD APPLICATION:C871($path_t)
End if 

If (OK=1)
	$macroFolder:=Folder:C1567(Get 4D folder:C485(Database folder:K5:14)+"Macros v2"+Folder separator:K24:12;fk platform path:K87:2)
	If ($macroFolder.exists=True:C214) & ($macroFolder.isFolder=True:C214)
		$macroFolder.copyTo(Folder:C1567($macroFolder.parent.parent.path+"AJ_Tools_UnitTest_Build/Components/AJ_Tools_UnitTest.4dbase/"))
	End if 
	ALERT:C41("Build OK")
End if 

BEEP:C151

