#features/step_definitions/kainos_search_steps.rb

Given(/^I'm on kainos homepage$/) do
  visit "https://kainos.com/"
  find(:xpath, "//*[@id='ccc-recommended-settings']").click
end

When(/^I use search button and type (.*)$/) do |searchText|
  click_on('Search')
  fill_in('q', with: searchText)
  find(:xpath, "//button[@type='submit']").click
end

Then(/^Search results contains link (.*)$/) do |textLink|
  expect(page).to have_content(textLink)
end