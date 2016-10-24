@ST_10509
Feature: SmokeTestsEx.Table

@SC_44245
Scenario Outline: Example Table in pop-up 'New scenario'
Given I am on page 'Editor'
And 'feature file' is selected
And pop-up 'New Scenario' is opened
When I tipe new step with '<some data>'
And I press key 'Enter'
Then I see that 'EXAMPLE TABLE' section is displayed
And I see that coloumn 'ET' named as 'some data'
And I see that column contain 1 row
And I see that button 'add row' is enabled
And I see that button 'delete' is disabled
When I click button 'add row'
Then I see that new row is added in column
When I enter 'some text' in row
Then I see that the text is saved in this row
When I click button 'add row'
Then I see that new row is added in column
When I select checkbox for 1 row
Then I see that button 'delete' is enebled
And I see that button 'delete' named as 'delete row'
When I select checkbox for 2 rows
Then I see that button 'delete' named as 'delete 2 rows'
When I click button 'delete 2 rows'
Then I see that 2 selected rows are deleted.
When I edit text in row with data
Then I see that edited text is saved

Examples: 
|some data|
||


@SC_44246
Scenario Outline: Example Table in Scenario Editor
Given I am on page 'Editor'
And 'feature file' is selected
And Scenario is selected
When I tipe new step with '<some data>'
And I press key 'Enter'
Then I see that 'EXAMPLE TABLE' section is displayed
And I see that coloumn 'ET' named as 'some data'
And I see that column contain 1 row
And I see that button 'add row' is enabled
And I see that button 'delete' is disabled
When I click button 'add row'
Then I see that new row is added in column
When I enter 'some text' in row
Then I see that the text is saved in this row
When I click button 'add row'
Then I see that new row is added in column
When I select checkbox for 1 row
Then I see that button 'delete' is enebled
And I see that button 'delete' named as 'delete row'
When I select checkbox for 2 rows
Then I see that button 'delete' named as 'delete 2 rows'
When I click button 'delete 2 rows'
Then I see that 2 selected rows are deleted.
When I edit text in row with data
Then I see that edited text is saved

Examples: 
|some data|
||