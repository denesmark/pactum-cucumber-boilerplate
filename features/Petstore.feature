Feature: Sample feature of pet-store

  Narrative: here comes the requirement and requirement ids

  @test_1233
  Scenario: Get non-existing pet
    Given I make a GET request to /v2/pet/212
    When I receive a response
    Then I expect response should have a status 404
    And I expect response should have a json like
      """
      {
        "code": 1,
        "type": "error",
        "message": "Pet not found"
      }
      """

  @test_1234
  Scenario: Create a pet in petstore
    Given I make a POST request to /v2/pet
    And I set body to
      """
      {
        "id": 11111112222211112,
        "category": {
          "id": 0,
          "name": "string"
        },
        "name": "doggie",
        "photoUrls": [
          "string"
        ],
        "tags": [
          {
            "id": 0,
            "name": "string"
          }
        ],
        "status": "available"
      }
      """
    When I receive a response
    Then I expect response should have a status 200
    And I expect response time should be less than 3000 ms