Feature: This is with variables
  feature file desc

   Scenario: Scenario1 with variables Test Case 1

    Given def a = 10
    And def b = 20
    When def c = a + b
    Then assert  c == 30
    And print "value is ", c
    And karate.log("Test Ended")

 Scenario: Scenario1 with variables Test Case 2

  Given def a = 20
  * def b = 20
  When def c = a * b
  Then assert  c == 400
  * print "value is ", c
  * karate.log("Test Ended")


 Scenario: Scenario1 with variables Test Case 3

  * def a = 20
  * def b = 20
  * def c = a * b
  * assert  c == 400
  * print "value is ", c
  * karate.log("Test Ended")




