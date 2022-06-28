#features/kainos_search.feature

Feature: Kainos search functionality
#As a user I can use the search button to search for documents on site.

@TEST_DEMOX-5 @smoke @regression @search
Scenario: Search: UI: search functionality
	Given I'm on kainos homepage
	When I use search button and type Intelligent automation
	Then Search results contains link Kainos launches Intelligent Automation practice

