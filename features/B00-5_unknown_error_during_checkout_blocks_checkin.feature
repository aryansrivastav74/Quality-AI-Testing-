Feature: Unknown Error during checkout/logout blocks check-in for subsequent day
  As an employee logging attendance
  I want to complete any missed checkout without encountering an Unknown Error
  So that my attendance session is closed and I am able to check in for the current day

  Scenario: Complete pending checkout from previous day and proceed to current day check-in
    Given an employee logs in to TeamSphere
    And the employee's checkout from the previous day was not captured
    When the system prompts the employee to complete the previous day's checkout
    And the employee submits the checkout
    Then the checkout should succeed without throwing an "Unknown Error"
    And the previous day's attendance record should be marked as closed
    And the employee should be able to check in for the current day
