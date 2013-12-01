Feature: Createing New Course

  Scenario: Creating a new course
    Given I am logged in as an instructor
    And I press the create button
    Then I will be taken to the create new course page
