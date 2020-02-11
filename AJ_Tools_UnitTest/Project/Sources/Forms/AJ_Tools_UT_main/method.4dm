$evt:=Form event code:C388

Case of 
	: ($evt=On Load:K2:1)
		C_OBJECT:C1216(AJ_Tools_UT_results)
		AJ_Tools_UT_results:=New object:C1471
		Form:C1466.listRef:=0
		Form:C1466.view:="lb"
		
		OBJECT SET VISIBLE:C603(*;"results_wa";False:C215)
		OBJECT SET VISIBLE:C603(*;"results_lb";True:C214)
		WA SET PREFERENCE:C1041(*;"results_wa";WA enable Web inspector:K62:7;True:C214)
		
		  // Try to get existing results to display the list of category / description
		$path_logs:=Get 4D folder:C485(Logs folder:K5:19;*)+"UnitTestsResults.json"
		If (Test path name:C476($path_logs)=Is a document:K24:1)
			Form:C1466.parsedResult:=JSON Parse:C1218(Document to text:C1236($path_logs;"UTF-8"))
			AJ_Tools_UT_buildList_UI 
		Else 
			Form:C1466.listRef:=New list:C375
			APPEND TO LIST:C376(Form:C1466.listRef;"No Data - You must run the full tests once";0)
			OBJECT SET LIST BY REFERENCE:C1266(*;"list";Form:C1466.listRef)
		End if 
		
		
	: ($evt=On Timer:K2:25)
		SET TIMER:C645(0)
		
		
		AJ_Tools_UT_results:=New object:C1471
		AJ_Tools_UT_results.tests:=New collection:C1472
		Case of 
			: (Form:C1466.timerCase="all")
				AJ_Tools_UT_launch_runAll 
			: (Form:C1466.timerCase="selected")
				AJ_Tools_UT_launch_runAll (Form:C1466.methods)
		End case 
		
		
	: ($evt=On Unload:K2:2)
		CLEAR LIST:C377(Form:C1466.listRef;*)
End case 
