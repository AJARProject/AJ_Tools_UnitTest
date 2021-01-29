//%attributes = {"invisible":true}
// results_lb_meta_cb () -> $meta
//
// This : current test object displayed in the result listbox
// $meta : (object) (return) return meta expression for the listbox line
//
// Meta expression callback for the results_lb

If (False:C215)
	// ----------------------------------------------------
	// User name (OS): gabriel inzirillo
	// Date and time: 29.01.21, 22:47:20
	// ----------------------------------------------------
	// Method: results_lb_meta_cb
	// 
	//
	// Copyrights (C) AJAR SA - 2020
	// ----------------------------------------------------
End if 

C_OBJECT:C1216($0; $meta)

$meta:=New object:C1471

If (This:C1470.result=True:C214)
	$meta.stroke:="darkgreen"
Else 
	$meta.stroke:="red"
	$meta.fontWeight:="bold"
End if 

$0:=$meta
