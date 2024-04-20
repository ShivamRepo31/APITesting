@exchange-rate-api
Feature: Exchange Rates API validation  
  Scenario: API call is successful and returns a valid price
    Given the exchange rates API endpoint is available
    When I request the latest USD exchange rates
    Then the response should contain a valid price for "EUR"


  @status-check
  Scenario: API returns various status codes and status field
    When I check the status codes and status field from the API
    Then the API should return one of the expected status codes
    And the API should return a status indicating success or failure
    
    
    @API-Response-Time-Validation

  Scenario: Verify API response time is not less than 3 seconds
    When I make a request to the API
    Then the API response timestamp should not be less than 3 seconds from the current time in seconds
    
    
    @Curreny-Exchange

  Scenario: Verify USD to AED exchange rate is in the range of 3.6 to 3.7
    When I fetch the USD to AED exchange rate
    Then the USD to AED exchange rate should be in the range of 3.6 to 3.7
    
    @Currency-Pair

  Scenario: Verify that 162 currency pairs are returned by the API
    When I make a request to the API
    Then the API should return 162 currency pairs
    
    @Validate-schema
 
   Scenario: Validate JSON schema
    When I make a request to the API
    Then the API response should match the JSON schema