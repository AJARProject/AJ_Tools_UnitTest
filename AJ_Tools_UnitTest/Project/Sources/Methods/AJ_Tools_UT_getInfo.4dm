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

$version_t:="1.0.3-Build23"  // Mon, 24 Feb 2020 14:52:48 GMT

$0:="AJ_Tools_UT: "+$version_t