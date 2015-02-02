Feature: Navigate to usatoday>more>News>galleries

@mediaviewpage
Scenario: Validate Photogalleries of mediaview page
Given Iam on Usatoday homepage
When hover over MORE
Then click on usanow
When I click on Photogalleries
And page should show the message "Oops, looks like there's no content in this category