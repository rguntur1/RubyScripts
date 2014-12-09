Feature: Verify the BBC_News.

@BBC_news
Scenario: Verify BBC_news
	When I enter bbc.com
	Then Ishould be on bbc_homepage.
	And I should navigate to sports page
	