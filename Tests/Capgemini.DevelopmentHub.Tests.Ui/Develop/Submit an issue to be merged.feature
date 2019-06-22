﻿Feature: Submit an issue to be merged
	In order to have my completed development merged
	As a developer
	I want to submit an issue that has been developed in Dynamics 365

Scenario: Create a solution merge
	Given I am logged in to the Development Hub app as an admin
	And I am viewing the Solution Merges sub area of the Develop area
	When I select the New command
	Then I can edit the following fields
		| Field              |
		| cap_issue          |
		| cap_targetsolution |

Scenario: Create a new solution merge without mandatory fields
	Given I am logged in to the Development Hub app as an admin
	And I am viewing the Solution Merges sub area of the Develop area
	When I select the New command
	And I save the record
	Then a mandatory field error is displayed on the following fields
		| Field              |
		| cap_issue          |
		| cap_targetsolution |