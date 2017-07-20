Feature:
  As a user, I want to log in with right login id and password

  Scenario: User should enter user name and password
    Given that the user is on the http://qa-test.avenuecode.com/
    When user logs in using Username as wntmddussla@hotmail.com and
    password 12341234
    Then login should be successful

  
