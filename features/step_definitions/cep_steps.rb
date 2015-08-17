
endpoint = ""
cep = ""
response = nil

Given /^the endpoint "([^"]*)"$/ do |param_endpoint|
  endpoint = param_endpoint
end

When(/^I provide the postal code "([^"]*)"$/) do |param_cep|
  cep = param_cep
end

And /^I retrieve the address$/ do
  url = "#{endpoint}#{cep}.json"
  response = HTTParty.get(url)
end

Then /^I should get "([^"]*)" as "([^"]*)"$/ do |field,  value|
  expect(response[field].strip).to eq(value.strip)
end

Then /^I should get status "([^"]*)"$/ do |status|
  expect(response.code.inspect).to eq(status.strip)
end

Then /^I should get a result that is "([^"]*)"$/ do |valid_result|
  begin
    parsed_response = JSON.parse(response.body)
    expect("valid").to eq(valid_result.strip)   
  rescue
    expect("not valid").to eq(valid_result.strip)    
  end  
end
