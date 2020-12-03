Feature: Hooks, backgrounds

  Background: Before Scenario background
    * print "before scenario"
    * configure afterScenario =
    """
    function (){
    karate.log("from after scenario background")
    }
    """
    * configure afterFeature =
    """
    function (){
    karate.log("from after feature background")
    }
    """

    Scenario:  Test case1
      * print("From Scenario 1")


    Scenario:  Test case1
      * print("From Scenario 2")
