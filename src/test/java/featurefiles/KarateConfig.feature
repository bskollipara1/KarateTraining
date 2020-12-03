Feature: Karate config
           reading global variables from karate-config.js file

  Scenario:  reading katare-config test case 1
    Given url baseURL
    And path listUsers
    When method get
    Then status 200
