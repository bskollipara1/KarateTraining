Feature: REST Create Fetch Update Delete API

  @rest
  Scenario: REST API Testing
    Given url "http://dummy.restapiexample.com/api/v1/create"
    And request {"name":"alab","salary":"666666","age":"66"}
    When method POST
    Then status 200
    * def id = response.data.id
    * match response.data.name == "alab"
    * print id


    Given url "http://dummy.restapiexample.com/api/v1/employee/" + id
    When method GET
    Then status 200



