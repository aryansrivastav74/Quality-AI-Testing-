Feature: Missing "b/" prefix when entering billing code in Timesheet
  As a resource logging working hours
  I want the system to have an inbuilt "b/" prefix or validation for billing codes
  So that downstream operational workflows and billing audits do not fail

  Scenario: Auto-prefix or validate "b/" prefix in billing code during Timesheet entry
    Given a resource logs in to TeamSphere
    When the user navigates to the "Timesheet" section
    And the user adds a process with a billing code under "Process / Bug ID"
    And the user enters only the numeric ID without the "b/" prefix
    Then the system should automatically prefix "b/" to the entered ID
    And the formatted billing code should be saved successfully
    And downstream operational workflows and billing audits should recognize the valid code
