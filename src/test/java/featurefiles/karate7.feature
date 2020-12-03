Feature: This is for SOAP API testing for enter payload xml file
  feature file desc

  @soap
  Scenario: Scenario for xml payload

    Given url "https://www.w3schools.com/xml/tempconvert.asmx"
    And header Content-Type = "text/xml; charset=utf-8"
    And  request read('../payloadData/soapAPIInput.xml')
    When soap action "https://www.w3schools.com/xml/CelsiusToFahrenheit"
    Then status 200
    And match response contains "98.6"
    # And match response //
    And match response //CelsiusToFahrenheitResult contains "98.6"
    And match responseHeaders['Server'] == ['Microsoft-IIS/7.5']
    And match responseHeaders['Server'][0] == 'Microsoft-IIS/7.5'
    And match responseType == "xml"
    And assert responseTime <= 2000

  @soap
  Scenario: Scenario for xml payload in resources

    Given url "https://www.w3schools.com/xml/tempconvert.asmx"
    And header Content-Type = "text/xml; charset=utf-8"
    And  request read('soapAPIInput_2.xml')
    When soap action "https://www.w3schools.com/xml/CelsiusToFahrenheit"
    Then status 200
    And match response contains "98.6"
    # And match response //
    And match response //CelsiusToFahrenheitResult contains "98.6"
    And match responseHeaders['Server'] == ['Microsoft-IIS/7.5']
    And match responseHeaders['Server'][0] == 'Microsoft-IIS/7.5'
    And match responseType == "xml"
    And assert responseTime <= 2000