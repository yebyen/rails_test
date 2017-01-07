When(/^I am on the homepage$/) do
  visit root_path
end

Then(/^I should see an expected DOM node$/) do
  find('h1', text: 'Welcome#index')
end

