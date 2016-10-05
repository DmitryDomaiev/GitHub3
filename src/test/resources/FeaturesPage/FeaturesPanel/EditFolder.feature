@EditFolder @ST_186280718
Feature: Edit folder

Background: 

Given I am in page "Default"
And I am signed in
Given I am in page "Dashboard"
And I select project "default"
And I am in page "Editor"
When I click icon 'Update from Git' in panel 'Features'
And I click on 'Select All' checkbox on pop-up "UPDATE DATA FROM GIT"
And I click on button "Update" on pop-up "UPDATE DATA FROM GIT"
Then I see success notification ""
And I select folder "feature" in the tree
And I click button 'New folder' in panel 'Features'
And I see pop up "New folder" is opened
When I type "folderName_1" into textbox 'Name' in pop-up 'New folder'
And I click on button "Create" on pop-up "New folder"
Then I see that new folder is successfully created
And I see that the new folder is selected in the tree

@REL-473 @SC_140021209
Scenario: Name folder using valid symbols
When I change textbox 'Folder name' value to "folderName_1_1" in folder info block under the tree
And I click button 'Enter'
Then I see success notification ""
And I see that changes are successfully saved in textbox 'Folder name' in folder info block under the tree
When I change textbox 'Folder name' value to "folderName_1_2" in folder info block under the tree
And I lose focus
Then I see success notification ""
And I see that changes are successfully saved in textbox 'Folder name' in folder info block under the tree
When I change textbox 'Folder name' value to "folderName_1_3" in folder info block under the tree
And I click button 'Save' for edited field under the tree
Then I see success notification ""
And I see that changes are successfully saved in textbox 'Folder name' in folder info block under the tree

@REL-482 @SC_148660907
Scenario: Edit folder name using invalid symbols
When I change textbox 'Folder name' value to "@" in folder info block under the tree
And I click button 'Enter'
And I see "Allowed characters: ' A-z 0-9 _ . - '" notifiction message under current input field
When I change textbox 'Folder name' value to "#" in folder info block under the tree
And I lose focus
And I see "Allowed characters: ' A-z 0-9 _ . - '" notifiction message under current input field
When I change textbox 'Folder name' value to "%" in folder info block under the tree
And I click button 'Save' for edited field under the tree
And I see "Allowed characters: ' A-z 0-9 _ . - '" notifiction message under current input field
When I change textbox 'Folder name' value to "folderName_1_1" in folder info block under the tree
And I click button 'Save' for edited field under the tree
Then I see success notification ""
And I see that changes are successfully saved in textbox 'Folder name' in folder info block under the tree
When I click icon 'Delete' in panel 'Features'
And I click on button "Delete" on pop-up "Delete folder"
Then I see that the folder was successfully deleted

@REL-477 @SC_111346796
Scenario: Edit folder name using dot in the beginning
When I change textbox 'Folder name' value to ".folderName_1_1" in folder info block under the tree
And I click button 'Enter'
And I see "Can't start with '.'" notifiction message under current input field
When I change textbox 'Folder name' value to ".folderName_1_1" in folder info block under the tree
And I lose focus
And I see "Can't start with '.'" notifiction message under current input field
When I change textbox 'Folder name' value to ".folderName_1_1" in folder info block under the tree
And I click button 'Save' for edited field under the tree
And I see "Can't start with '.'" notifiction message under current input field
When I change textbox 'Folder name' value to "folderName_1_1" in folder info block under the tree
And I click button 'Save' for edited field under the tree
Then I see success notification ""
And I see that changes are successfully saved in textbox 'Folder name' in folder info block under the tree
When I click icon 'Delete' in panel 'Features'
And I click on button "Delete" on pop-up "Delete folder"
Then I see that the folder was successfully deleted

@REL-816 @SC_158592842
Scenario: Cancel editing folder name
When I change textbox 'Folder name' value to "folderName_1_1" in folder info block under the tree
And I click button 'Esc'
And I see that selected folder name equals "folderName_1"
When I change textbox 'Folder name' value to "folderName_1_1" in folder info block under the tree
And I click button 'Cancel' for edited field under the tree
And I see that selected folder name equals "folderName_1"
When I click icon 'Delete' in panel 'Features'
And I click on button "Delete" on pop-up "Delete folder"
Then I see that the folder was successfully deleted

@REL-817 @SC_185109856
Scenario: Duplicate folder name
And I select folder "feature" in the tree
And I click button 'New folder' in panel 'Features'
And I see pop up "New folder" is opened
When I type "folderName_1_1" into textbox 'Name' in pop-up 'New folder'
And I click on button "Create" on pop-up "New folder"
Then I see that new folder is successfully created
And I see that the new folder is selected in the tree
When I change textbox 'Folder name' value to "folderName_1" in folder info block under the tree
And I click button 'Enter'
And I see "Target folder already contains folder named 'folderName_1'" notifiction message under current input field
When I change textbox 'Folder name' value to "folderName_1" in folder info block under the tree
And I lose focus
And I see "Target folder already contains folder named 'folderName_1'" notifiction message under current input field
When I change textbox 'Folder name' value to "folderName_1" in folder info block under the tree
And I click button 'Save' for edited field under the tree
And I see "Target folder already contains folder named 'folderName_1'" notifiction message under current input field
And I click button 'Cancel' for edited field under the tree

