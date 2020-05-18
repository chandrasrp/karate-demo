Feature: simple post feature

  Background:
    * def myUrl = 'https://petstore.swagger.io/v2/pet'
    * url myUrl

  Scenario: Create a record

    Given url myUrl
    And request read('test-post-data.json')
    When method post
    Then status 200
    And match $ == read('expected.json')
