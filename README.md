# Cucumber
Automation test script written in Cucumber Water web driver

Feature:  As a ToDo App user, I should be able to create a task So I can manage my tasks
  Background:    Given user is on qa-test.avenuecode.com link and click sign in button    Given user is logging in
    Scenario: Click 'My Tasks' button on the navigation bar to see list of tasks created if it exists      When 'My Tasks' tab exists, then click it      Then the user should see a message on the top part saying this list belongs to logged user
    Scenario: User should be able to add valid task with enter key      Given user is on the 'My Tasks page'      When user types valid size task name and press enter      Then task should be added on the Todo list
    Scenario: User should not be able to add new tasks when task name is less than 3 characters      Given user is on the 'My Tasks' page      When user types tasks name that is less than 3 characters and clicks add task button      Then task is not added on the Todo list
    Scenario: User should not be able to add new tasks when task name is more than 250 characters      
    Given user is already on the 'My Tasks' page      
    When user types tasks name that is more than 250 characters and clicks add task button      
    Then task is not added on the Todo list
   
   -------------------
   
   Feature:  As a ToDo App user  I should be able to create a subtask  So I can break down my tasks in smaller pieces
  Background:    Given that user is on qa-test.avenuecode.com/tasks link    Given that user is logged on already    Given user is on the 'My Tasks page'    Given create new task as a prerequisite
  Scenario: The user should see a button labeled as ‘Manage Subtasks’    Then user must be able to see a button labeled as 'Manage Subtasks'
  Scenario: 'Manage Subtasks' button should display the number of subtasks created for that task    Then user must see the number of subtasks created for that task on 'Manage Subtasks'
  Scenario: Clicking 'Manage Subtasks' button should open up a modal dialog    When user clicks on 'Manage Subtasks' button    Then user must see a modal dialog
  Scenario: There should be a form so you can enter the SubTask Description (250 characters) and SubTask due date (MM/dd/yyyy format)    When user clicks on 'Manage Subtasks' button    Then user must see a textfield for SubTask description and SubTask due date (MM/dd/yyyy format)
  Scenario: User should be able to add a new subtask with valid SubTask description and Subtask due date inserted    When user clicks on 'Manage Subtasks' button    And user insert valid SubTask description and SubTask due date in text fields    And user clicks on 'Add' button    Then user must see a new SubTask added on the bottom of a modal dialog
  Scenario: User should not be able to add a new subtask with no SubTask description and no SubTask due date inserted    
  When user clicks on 'Manage Subtasks' button    
  And SubTask due date is emptied    And user clicks on 'Add' button    Then user must not see a new SubTask added on the bottom of a modal dialog
