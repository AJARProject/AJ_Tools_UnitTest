# AJ_Tools_UnitTest
AJ_Tools_UnitTest is a component developed with 4D v17 R5. Its purpose is to give 4D developers a way to do unit test and partial integration tests within 4D.

It is made to be used in development environment but not in production. You can write unit tests and partial integration tests (no UI). You cannot write functional tests with this component.

### Credits
This component was created under the inspiration of the Javascript unit test library  [RITEway](https://github.com/ericelliott/riteway) developed by Eric Elliot, which is a master in the Test Driven Development.

Those 2 articles was the main resources that inspired me to developer AJ_Tools_UnitTest component.
[JavaScript Testing: Unit vs Functional vs Integration Tests](https://www.sitepoint.com/javascript-testing-unit-functional-integration/)
[Rethinking Unit Test Assertions](https://medium.com/javascript-scene/rethinking-unit-test-assertions-55f59358253f)

### Documentation
You can find a PDF with a complete documentation on how to use the component.

**Example**

      // __UNIT_TEST
    
    $test:=New AJ_Tools_UT_describe ("Sum()";Current method name;"Math")
    
    $test.given:="no parameters"
    $test.should:="return 0"
    $test.expected:=0
    $test.actual:=zz_sum 
    $test.assert()
    
    $test.given:="1 parameter (here 5)"
    $test.should:="return 10 (addition itself)"
    $test.expected:=10
    $test.actual:=zz_sum (5)
    $test.assert()
    
    $test.given:="3 and 3"
    $test.should:="return 6"
    $test.expected:=6
    $test.actual:=zz_sum (3;3)
    $test.assert()

### Version
1.0.0-Build9 (28.08.2019)

### Questions?
If you have any question, you can ask them directly on github or write to info@ajar.ch