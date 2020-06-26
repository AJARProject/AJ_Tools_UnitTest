<!-- AJ_UnitTest.new ( describe; method; {category} ) -> UnitTest class instance -->


## Description

Exposes the unit test class at the host base. Replace New AJ_Tools_UT_describe since V18R3. Create a new test. A test can then do multiple assert. Only one test must be created by method.


```4d
  AJ_UnitTest.new ( describe; method; {category} ) -> instance
```

| Parameter | Type | In/Out | Description |
| --------- | ---- | ------ | ----------- |
| describe | text | in | description of the test. |
| method | text | in | method that execute the test (must be "Current method name"). |
| category | text | in | category of the test. This is used to separate multiple tests in different categories. |
| instance | object | out | return a unit test object with the assert member function. This object will need 4 parameters (given, should, expected, actual) before to call the assert method. |

## Example

```4d
    // __UNIT_TEST

   $test:= AJ_UnitTest.new ("Test the zz_max_method";Current method name;"Math")

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
