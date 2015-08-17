item_xpath = ""
search_term = ""

Given /^I am on walmart\.com\.br$/ do
  visit('/')
end

When /^I search for "([^"]*)"$/ do |term|
  search_term = term
  fill_in('suggestion-search',:with => term)
  click_button("Procurar")
end

Then /^I should get the results$/ do
  title = 'Resultados da busca para \"#{search_term}\"'
  expect(page).to have_content #{title}
end
 
Then /^I should see the first item$/ do
  item_xpath = "//*[@id=\"category-products\"]/div[1]/section/ul/li[1]/div/a/span"
  expect(page).to have_selector(:xpath, item_xpath)
end
  
Then /^I choose the first item$/ do
  find(:xpath, item_xpath).click()
end

Then /^I should see the product details$/ do
  description = "Descrição do produto"
  expect(page).to have_content(description)
end

Then /^I add it to the cart$/ do
  find(".buy-button").click()
end

Then /^I choose no extended warranty$/ do
  click_on("Continuar")
end

When /^I open the cart$/ do
  find(".cart").click()
end

Then /^I should see the item in the cart$/ do
  expect(page).to have_content("Meu carrinho (1 item)")
end
