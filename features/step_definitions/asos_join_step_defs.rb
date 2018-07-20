Given("I access the Asos homepage") do
  @ASOS_Testing = ASOS_Testing.new
  @ASOS_Testing.asos_homepage.visit_asos_homepage
end

When("I click the join link") do
  @ASOS_Testing.asos_homepage.click_join_link
end

Then("I should be redirected to the register page") do
  @ASOS_Testing.asos_join.reg_page
end

Given("I access the ASOS register pages") do
  @ASOS_Testing = ASOS_Testing.new
  @ASOS_Testing.asos_join.reg_page
end

Given(/^I fill the following email details: (.*)$/) do |email|
  @ASOS_Testing.asos_join.fill_email(email)
end

Given(/^I fill in invalid details (.*) (.*) (.*) (.*) (.*) (.*)$/) do |firstname, lastname, password, day, month, year|
  @ASOS_Testing.asos_join.fill_contact_details(firstname,lastname,password,day,month,year)
end

When("I click submit") do
  @ASOS_Testing.asos_join.click_submit
end

Then(/^I should see the following error: (.*)$/) do |error|
  expect(@ASOS_Testing.asos_join.email_error).to include(error)
end
