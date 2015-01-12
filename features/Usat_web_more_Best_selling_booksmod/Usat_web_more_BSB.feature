Feature: Navigate to usatoday>more>Best-Selling books

@bestsellingbooks
Scenario: Validate books of Best-Selling books page
Given I am on Usatoday homepage
And hover over MORE
Then click on Best-Selling books
And select by Author
Then search for laura Ingraham 
And check for laura Ingraham in the list

