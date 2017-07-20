Feature:
  As a ToDo App user
  I should be able to create a subtask
  So I can break down my tasks in smaller pieces

  Background:
    Given that user is on qa-test.avenuecode.com/tasks link
    Given that user is logged on already
    Given that valid task is already created on the Todo list

  Scenario: The user should see a button labeled as ‘Manage Subtasks’
    When user is on Todo list page
    Then user must be able to see a button labeled as 'Manage Subtasks'

  Scenario: 'Manage Subtasks' button should display the number of subtasks created for that task
    When user is on Todo list page
    Then user must see the number of subtasks created for that task on 'Manage Subtasks'

  Scenario: Clicking 'Manage Subtasks' button should open up a modal dialog
    When user is on Todo list page
    And user clicks on 'Manage Subtasks' button
    Then user must see a modal dialog

  Scenario: There should be a form so you can enter the SubTask Description (250
            characters) and SubTask due date (MM/dd/yyyy format)
    When user is on Todo list page
    And user clicks on 'Manage Subtasks' button
    Then user must see a textfield for SubTask description and SubTask due date (MM/dd/yyyy format)

  Scenario: User should be able to add a new subtask with valid SubTask description and Subtask due date inserted
    When user is on Todo list page
    And user clicks on 'Manage Subtasks' button
    And user insert valid SubTask description and SubTask due date in text fields
    And user clicks on 'Add' button
    Then user must see a new SubTask added on the bottom of a modal dialog
