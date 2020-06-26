<!--AJ_Tools_UT_runAll ( {methods} ) -> parsed results -->



## Description

This method will run all the tests (or only the given methods) and return the results in an object. It will also log the results in a file located at : "<database_path>/Logs/UnitTestsResults.json".


```4d
  AJ_Tools_UT_runAll ( {methods} ) ->  results
```

| Parameter | Type | In/Out | Description |
| --------- | ---- | ------ | ----------- |
| methods | collection | in | collections of method to tests |
| result | object | out | parsed results |

## Example

```4d
   C_Object($parsedResults)
   C_Collection($methods)
   
  $methods:=New collection
  
  $methods.push("mymethod1")
  $methods.push("mymethod2")
 
  $parsedResults:= AJ_Tools_UT_runAll ( $methods )
```

