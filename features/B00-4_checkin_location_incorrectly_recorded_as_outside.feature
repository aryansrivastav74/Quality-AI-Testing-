Feature: Check-in location incorrectly recorded as Outside when employee is inside office premises
  As an employee checking in from the office
  I want my check-in location status to be correctly verified against the office geofence
  So that my attendance is accurately recorded as Inside when within the building premises

  Scenario: Verify check-in location is accurately marked as Inside within office premises
    Given an employee is physically present inside the office premises
    When the employee logs in to TeamSphere
    And the employee performs "Check-In" on the Attendance screen
    Then the system should capture the employee's GPS coordinates
    And the geofence validation should accurately recognize the office coordinates
    And the check-in location status should be tagged as "Inside" instead of "Outside"
