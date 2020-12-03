Feature: This is for json
  feature file desc

  Scenario: Scenario for json 1

    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}
    * print json
    Then assert json.id == "101"
    * assert json.tool.name == "Karate"
    * assert json.tool.version == "0.9.6"
    * match json.tool == { "name":"Karate", "version":"0.9.6"}

  Scenario: Scenario for json 2

    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}
    * print json
    Then assert json.id == "101"
    * assert json.tool.name == "Karate"
    * assert json.tool.version == "0.9.6"
    * match json.tool == { "name":"Karate", "version":"0.9.6"}





