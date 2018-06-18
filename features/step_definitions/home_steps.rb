Given(/^I land to Home Screen and verify Home tab is displayed$/) do
  text("Home")
  #sleep
end

When(/^I click on "([^"]*)" in Horizontal Scroll View$/) do |tab_name|
  text(tab_name).click
end

Then(/^I verify card title text is equal "([^"]*)"$/) do |arg|
   expect(find_element(id:"main_menu_card_default_fragment_card_view_title").text).to eq(arg)
end