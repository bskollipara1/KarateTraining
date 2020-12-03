Feature:  Calling static and non static variables

  Scenario: Static variable test case
    * def constants = Java.type('misc.AutomationConstants')
    * print constants.devUrl
    * print constants.getDevURL()


  Scenario: Non Static variable test case
    * def env1 =
    """
    function(){

       var temp = Java.type('misc.AutomationConstants')
       var constants = new temp();
       return constants.qaURL;

    }
    """
    * def qaURL = call env1
    * print qaURL
    * print env1();

  Scenario: Non Static variable test case 2
    * def env1 =
    """

    var res = new  Java.type('misc.AutomationConstants');
    return res.qaUrl;

    }
    """
    * def qaURL = call env1
    * print qaURL
    * print env1();

  Scenario: Non Static variable test case 3
    * def env1 =
    """
    function(){
       return Java.type('misc.AutomationConstants').qaURL;

    }
    """
    * def qaURL = call env1
    * print qaURL
    * print env1();