<!--AJ_Tools_UT_runAll ( {methods} ) -> parsed results -->

# AJ_Tools_UT_runAll

## Parameters

 *  methods (collection) (optional) : collections of method to tests.

## Return value

(object) parsed results.

## Description

This method will run all the tests (or only the given methods) and return the results in an object. It will also log the results in a file located at : "<database_path>/Logs/UnitTestsResults.json".

## Example

```
   C_Object($parsedResults)
 
  $parsedResults:= AJ_Tools_UT_runAll (  )
```

