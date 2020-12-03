Feature: This is for XML
  feature file desc

  Scenario: Scenario for xml 1

    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    * print xml
    Then assert xml.info.id == "101"
    * match xml/info/id == 101
    * assert xml.info.tool.name == "Karate"
    * assert xml.info.tool.version == "0.9.6"
   # * assert xml/info/tool/version == "0.9.6"


  Scenario: Scenario for xml 2

    Given def xml =
  """
  <info>
  <id>101</id>
  <tool>
  <name>Karate</name>
  <version>0.9.6</version>
  </tool>
  <tool>
  <name>IntelliJ</name>
  <version>2020.2</version>
  </tool>
  </info>
  """
    * print xml
    Then assert xml.info.id == "101"
    * match xml/info/id == 101
    * match xml/info/tool[1] contains "<name>Karate</name><version>0.9.6</version>"
    * match xml/info/tool[2] contains "<name>IntelliJ</name><version>2020.2</version>"
    * match xml contains "<name>Karate</name><version>0.9.6</version>"
   # * assert xml.info.tool.version == "0.9.6"



