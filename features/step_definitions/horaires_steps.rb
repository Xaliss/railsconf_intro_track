 
require 'rspec/expectations'

Given(/^I am at homepage$/) do
 stubz 	
  visit horaires_index_path
end

When(/^I click the link$/) do
stubz 
click_link "Rechercher le nom de votre arret"
end
 
Then(/^I should see my timetable$/) do
  
 expect(page).to have_content("Trio")  
 end


