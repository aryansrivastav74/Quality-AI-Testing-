Feature: Unable to apply for Second Half WFH when a First Half Sick Leave is pending for the same day
  As an employee applying for attendance requests
  I want to apply for Second Half WFH on the same date as a pending First Half Sick Leave
  So that mutually exclusive half-day requests can coexist without false overlapping errors

  Scenario: Successfully submit Second Half WFH alongside pending First Half Sick Leave
    Given an employee logs in to TeamSphere
    And the employee has an existing pending "Sick Leave" request for "First Half" on a selected date
    When the employee navigates to the "Leaves/WFH" module
    And the employee submits a "WFH" request for "Second Half" on the same date
    Then the system should not block the application with an overlapping date range error
    And both non-conflicting half-day requests should be accepted for the same day
