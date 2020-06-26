//%attributes = {"invisible":true,"shared":true,"lang":"en"}
  // AJ_Tools_UT_getInfo -> return
  // return : (text) (return) version
  //
  // Show the version info of the component

If (False:C215)
	  // ----------------------------------------------------
	  // User name (OS): gabriel inzirillo
	  // Date and time: 17.07.19, 15:16:16
	  // ----------------------------------------------------
	  // Method: AJ_Tools_UT_getInfo
	  // Description
	  // 
	  //
	  // ----------------------------------------------------
	  // Copyrights (C) AJAR SA - 2019-2020
End if 

C_TEXT:C284($0)

$version_t:="2.0.1-Build31"  // Fri, 26 Jun 2020 08:49:31 GMT

$0:="AJ_Tools_UT: "+$version_t