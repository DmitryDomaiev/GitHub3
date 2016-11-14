@ST_15965
Feature: Profile page: Account Tariff plan.

@SC_67814
Scenario: Verify thet Tariff plan section is appear
Given I logged in as a new user without domains and subscriptions
When I navigate to profile page
Then I see that the section "Tariff plan" is not displayed
When I create first domain
Then I see that "Tariff plan" section is appear

@SC_67815
Scenario: Tariff plan section
Given I am logged in Relime as user with default tariff plan
And I navigate to profile page
Then I see that Circle progress bar is displayed
And I see that the current subscribes quantity is displays in Circle progress bar
And I see that the maximum subscribers in terms of the current tariff plan is displayed
And I see that the Circle progress bar colored to "#C0F12F"
And I see that Horizontal bar displayed
And I see that Horizontal bar color is "#BEEC2C"
And I see that amount subscriptions "5", "15", "25", "55", "100", "250", "500", "1000" is displayed
And I see that text "Current plan: 5 subscriptions for free" is displayed under the bar
And I see tha triangle pointer is displayed above 5
And I see that te button "Update" is not displayed under the bar

@SC_67816
Scenario Outline: Select and cancel Tariff plan
Given I am logged in Relime as user with default tariff plan
And I navigate to profile page
When I hovers mouse cursor on any other tariff plan
Then I see that the price is displayed above the quantity of users
And I see that horizontal bar extends till the hovered tariff plan
When I ckick on any other tariff plan
Then I see that the triangle pointer stays at the current plan
And I see that the horizontal bar is colored up to a selected plan
And I see that the text 'You are going to change your tariff plan to <selected quantity of users> for <selected price>' is appears
And I see that the button 'Update' is appears
When I click on button 'Update'
Then I see that Relime success notification appears with text 'Thank you for your choice! Your request is being processed'
And I see that the text 'Your request is being processed. Cancel' is displayed
And I see that the button 'Cancel' is linced
And I see that the triangle pointer moves to a selected plan
When I click the button 'Cancel'
Then I see that account tariff plan backs to the current plan
And I see that the triangle pointer moves to the current plan
And I see that the horizontal bar is colored up to a selected plan
And I see that the text 'Your request is being processed. Cancel' is disappeared
And I see that te button 'Update' is not displayed under the bar
And I see that text 'Current plan: 5 subscriptions for free' is displayed under the bar

Examples: 
|selected quantity of users|selected price|
|15|15|


@SC_67817
Scenario: Select and congirm new Tariff plan
Given I logged in Relime as user with default tariff plan
And I navigate to profile page
And I ckick any other tariff plan
And I click button 'Update'
And I see that the text 'Your request is being processed. Cancel' is displayed
When I logged in to the 'Relime Admine page'
And I see that the tab 'Invoices' is opened
Then I see that the record on 'New invoices to handle' area is created
When I click button 'Confirm' near proper user
And I am logged in Relime with previous credentials
And I navigate to profile page
Then I see that 'valid till' 'date' and button 'Extend' is displayed below 'Current plan'
When I click button 'Extend'
Then I see that Relime success notification appears with text 'Thank you for your choice! Your request is being processed'
And I see that the text 'Your request is being processed. Cancel' is disappeared
When I click button 'Cancel'
Then I see that account tariff plan backs to the current plan
Then I see that 'valid till' 'date' and button 'Extend' is displayed below 'Current plan'

@SC_67818
Scenario: Subscribe / unsubscribe users
Given I am loggen in to Relime as user with maximum quantity of users
When I navigate to page 'progect setting'
And I am invite more user(s) from tab 'Invite'
Then I see that th message 'Your tariff plan doesn't allow to invite more users. You could extend it on Profile page' is displayed
When I am invite more user(s) from tab 'Project team'
Then I see that th message 'Your tariff plan doesn't allow to invite more users. You could extend it on Profile page' is displayed

@SC_67819
Scenario Outline: Verify price for Tariff Plan
Given I am on page 'profile'
And I see that 'Tariff Plan' is displayed.
When I hover mouse on <Tariff Plan>
Then I see that <prise> is displayed.

Examples: 
|Tariff Plan|prise|
|15|15|
|25|25|
|50|50|
|100|100|
|250|250|
|500|500|
|1000|1000|


@SC_67820
Scenario Outline: Smoke. Select and confirm Tariff Plan
Given am loged in as user <some user>
And I am on page 'Profile'
When I click not defoult Tariff Plan
And I click button 'Update'
Then I go to 'Relime Admine' tab 'Invotes'
And I see that record on 'New invoices to handle' area is created for <some user>
When I go to Relime as user <some user>
Then I see that Tariff Plan updeted to selected earlier.

Examples: 
|some user|
|user|


@SC_67821
Scenario Outline: Smoke. Extent the Tariff Plan
Given am loged in as user <some user>
And I am on page 'Profile'
And not defaul Tariff Plan is applied
When I click button 'extend'
Then I go to 'Relime Admine' tab 'Invotes'
And I see that record on 'New invoices to handle' area is created for <some user>
When I click button 'confirm' opposite  <some user>
Then I go to Relime as user <some user>
And I see that current Tariff Plan still selected.
And section 'VALID TILL'  display 'current date + 1 year'

Examples: 
|some user|
|user|