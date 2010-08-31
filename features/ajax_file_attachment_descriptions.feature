@javascript
Feature: ajax file attachment description updates

  Background: as an editor
    Given I am logged in as a "editor" user

  Scenario: update file description w/ ajax
    Given there is 1 existing file
    And I am on the homepage
    When I follow "update description"
    And I fill in "file_attachment[description]" with "AJAX description"
    And I press "Update"
    Then I should see "AJAX description"
    And I should be on the homepage