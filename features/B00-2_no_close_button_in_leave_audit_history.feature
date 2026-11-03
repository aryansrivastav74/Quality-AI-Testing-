Feature: No close button in Leave Audit history pop up
  As a user reviewing leave requests
  I want a functional Close button on the Leave Audit history pop-up
  So that I can close or dismiss the modal and return to the Leave/WFH page

  Scenario: Verify Close button is present and functional in Leave Audit history pop up
    Given a user logs in to TeamSphere
    When the user navigates to the "Leave/WFH" section
    And the user clicks on "View Audit History" for a leave request
    Then a pop-up window should display the audit records
    And a visible "Close" button should be present on the pop-up
    When the user clicks on the "Close" button
    Then the audit history pop-up should close immediately
    And the user should be able to interact with the Leave/WFH page
