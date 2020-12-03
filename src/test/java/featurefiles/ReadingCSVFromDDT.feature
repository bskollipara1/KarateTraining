Feature: Reading CSV from DDT

  Scenario Outline: DDT from CSV
    * print "<cust_id>, <cust_name>, <age>"

    Examples:
      | read("classpath:data.csv") |

