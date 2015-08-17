Feature: Shopping Cart

Scenario: Adding a TV to the shopping cart

Given I am on walmart.com.br
When I search for "tv"
Then I should get the results
And I should see the first item
Then I choose the first item
And I should see the product details
Then I add it to the cart
And I choose no extended warranty
And I open the cart
Then I should see the item in the cart
