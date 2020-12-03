Feature:  Demo of JavaScript Func

   Scenario: Demo of Java Script Function Testcase 1
   * def fn1 = function() { return 1; }
   * def fn2 =
     """
       function(id){
         karate.log(id);
       }
     """
    * print fn1()
    * fn2("samartha")