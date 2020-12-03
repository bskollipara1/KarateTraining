Feature: Reading CSV from DDT

  Background:
    * def data = read('classpath:data.csv')

  Scenario Outline: CSV DDT Testing
    * print "<cust_id>, <cust_name>, <age>"
    * def json1 = {"last_name" : <cust_name>}
    * print json1

    Examples:
      | data |