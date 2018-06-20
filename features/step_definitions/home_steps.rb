Given(/^I land to Home Screen and verify Home tab is displayed$/) do
  text("Home")
  #sleep
end
Given("I land on the home screen and verify Home tab is displayed") do
  puts "landed to home screen"
end

When(/^I click on "([^"]*)" in Horizontal Scroll View$/) do |tab_name|
  text(tab_name).click
end

Then(/^I verify card title text is equal "([^"]*)"$/) do |arg|
   expect(find_element(id:"main_menu_card_default_fragment_card_view_title").text).to eq(arg)
end

When(/^I tap on Welcome on United section$/) do
  find_element(id:"main_menu_mp_title").click
end

Then(/^I tap Sign in button$/) do
  find_element(id:"main_menu_mp_signin_button").click
end

Then(/^error message "([^"]*)" should be displayed$/) do |text|
  expect(find_element(id:"message").text).to eq(text)
end

When(/^I click on Entertainment section$/) do
  find_element(id:"main_menu_entertainment").click
end

Then(/^"([^"]*)" should be displayed on Entertainment page$/) do |text|
  expect(find_element(id:"inflight_header").text).to eq(text)
end

When(/^I swipe screen to the "([^"]*)" direction$/) do |direction|
  if direction == "right"
    swipe(:start_x =>0.01, :start_y => 0.5, :end_x => 0.99, :end_y => 0.5 , :duration => 900).perform
  elsif direction =="left"
    swipe(:start_x =>0.99, :start_y => 0.5, :end_x => 0.01, :end_y => 0.5 , :duration => 900).perform
  end
end

And(/^I look for menu item "([^"]*)" , swipe to find if it necessary and then tap$/) do |text|
  swipe(:start_x =>0.5, :start_y => 0.99, :end_x => 0.05, :end_y => 0.2, :duration => 900)
  menu_item = text(text)
  menu_item.click
end

Then(/^I enter "([^"]*)" as amount I want to exchange$/) do |amount|
  amount_field =find_element(id:"editAmount")
  amount_field.click
  amount_field.send_keys amount
end

Then(/^I click currency to convert from$/) do
find_element(id:"fromCurrencyItems").click
end