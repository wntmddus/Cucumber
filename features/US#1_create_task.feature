Feature:
  As a ToDo App user, I should be able to create a task So I can manage my tasks

  Background:
    Given user is on qa-test.avenuecode.com link and click sign in button
    Given user is logging in

    Scenario: See "My Tasks" tab
      Then user should be able to see 'My Tasks' tab
