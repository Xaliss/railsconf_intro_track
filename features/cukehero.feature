

Feature: Finding a bus timetable 
As a bus user
I have to consult a program that gives me the bus schedule

Scenario: To know the schedule of my next bus

Given I am at homepage
When  I click the link
Then I should see my timetable
