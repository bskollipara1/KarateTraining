Feature: Testing REST API with json output

  @rest
  Scenario: REST API Testing
    Given url "http://dummy.restapiexample.com/api/v1/employees"
    When method GET
    Then status 200
    #And match response //string contains "104"
   # And match responseHeaders['Server'] == ['Microsoft-IIS/7.5']
    #And match responseHeaders['Server'][0] == 'Microsoft-IIS/7.5'
    And match responseType == "json"
    And assert responseTime <= 1000
    * match response.status == "success"
    * match response.status == "#string"
    * match response.data == "#array"
    * print response.data[0].employee_name
    * match response.data[0].employee_name contains "Tiger"


