@Pages @ST_134928228
Feature: Pages routing

Background: 

Given I am in page "Default"
And I am signed in
Given I am in page "Dashboard"

@ignore @REL-745 @SC_192955907
Scenario: Check Sign In/Out link on Profile page
Then I can see path matches RegEx "[default]dashboard" in browser route

@ignore @REL-744 @SC_174586801
Scenario: Check settings link on Profile page
Then I can see path matches RegEx "[default]dashboard" in browser route

@REL-747 @SC_166328294
Scenario: Check link on Dashboard page
Then I can see path matches RegEx "[default]dashboard" in browser route

@REL-748 @SC_184324927
Scenario: Check link on Edit Features page
And I select project "default"
And I am in page "Editor"
Then I can see path matches RegEx "[default][A-Z,0-9]{3,4}/editor" in browser route

@REL-749 @SC_151195062
Scenario: Check link on Project Settings page
And I select project "default"
And I am in page "Project Settings"
Then I can see path matches RegEx "[default][A-Z,0-9]{3,4}/settings" in browser route

@REL-750 @SC_137060111
Scenario: Check link on Project Statistics page
And I select project "default"
And I am in page "Statistics Page"
Then I can see path matches RegEx "[default][A-Z,0-9]{3,4}/activity" in browser route

@REL-751 @SC_201296162
Scenario: Check link on Project Statistics page
And I select project "default"
And I am in page "Feature Management"
Then I can see path matches RegEx "[default][A-Z,0-9]{3,4}/management" in browser route

@REL-813 @SC_140590448
Scenario: Check dashboard page is displayed when redirected to non existing page
And I select project "WRONG"
Then I can see path matches RegEx "[default]dashboard" in browser route

