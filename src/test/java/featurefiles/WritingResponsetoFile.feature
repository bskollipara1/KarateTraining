Feature:  Writing response to a file

  Scenario: Writing response to a file
      * def lib = Java.type('misc.Utility')
      Given url "https://reqres.in/api/users/2"
      When method get
      Then status 200
      * lib.writeToFile("writeResp2File.json", response)
      * def res1 = read("classpath:writeResp2File.json")
      * print res1
      * def res2 = get response $.data
      * print res2



    Scenario: Writing response to a file
        * def lib = Java.type('misc.Utility')
        Given url "https://reqres.in/api/users/2"
        When method get
        Then status 200
        * def res2 = get response $.data
        * lib.writeToFile("writeResp2File_1.json", res2)
        * def res1 = read("classpath:writeResp2File_1.json")
        * print res1
        * def res2 = get response $.data
        * print res2
        * print "*****************************************************"
       # * print "******--->" read("classpath:writeResp2File_1.json")
        #* print karate.get("response $.data")
        #* print karate.get("response $.data.last_name")
        * print response.data.last_name
        * print res2.last_name

        * def name = res2.last_name
        * def output = { "name" : #(name) }
        * print output


    Scenario: Writing response to a file
        * def lib = Java.type('misc.Utility')
        Given url "https://reqres.in/api/users/2"
        When method get
        Then status 200
        #* def res2 = get response $.data
        #* lib.writeToFile("writeResp2File_2.json", res2)
        * def cust_id = 123456
        * def res1 = read("classpath:writeResp2File_2.json")
        * print res1


