Feature: URL and path usage

  Scenario: url and path usage test case 1
    Given url "http://reqres.in"
    And path="/api/users?page=2"
    When method GET
    Then status 200
    And match response.page == 1


