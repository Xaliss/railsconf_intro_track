 
require 'rspec/expectations'

Given(/^I am at homepage$/) do
   visit horaires_index_path
end
When(/^I click the link$/) do
stubc
 click_link "Rechercher le nom de votre arret"
end
And(/^I fill in field$/) do
stubc
 fill_in 'Zom' ,:with => 'Jean' 
end
And(/^I See the link$/) do
stubc
 click_link 'Jean Moulin (CASTANET-TOLOSAN)' 
end
 
Then(/^I should see my timetable$/) do
  expect(page).to have_content "43.666785 Jean Moulin"
end 


