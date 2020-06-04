<!--New AJ_Tools_UT_describe ( describe; method; {category} ) -> unit test instance -->

# New AJ_Tools_UT_describe

## Parameters

* describe : (text) description of the test.
* method : (text) method that execute the test (must be "Current method name").
* category : (text) (optional) category of the test. This is used to separate multiple tests in different categories.

## Return value

(object) return a unit test object with the assert member function. This object will need 4 parameters (given, should, expected, actual) before to call the assert method.

## Description

Create a new test. A test can then do multiple assert. Only one test must be created by method.

## Example

```
    // __UNIT_TEST

   $test:= New AJ_Tools_UT_describe ("Test the zz_max_method";Current method name;"Math")

   $test.given:="no arguments"
   $test.should:="return 0"
   $test.expected:=0
   $test.actual:=zz_max
   $test.assert()
   
   $test.given:="1 and 1"
   $test.should:="return 1"
   $test.expected:=1
   $test.actual:=zz_max (1;1)
   $test.assert()
```
