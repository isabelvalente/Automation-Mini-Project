Given("I access the ASOS womens page") do
  @ASOS_Testing = ASOS_Testing.new
  @ASOS_Testing.asos_shop.womens_page
end

Given("I click on clothing") do
  @ASOS_Testing.asos_shop.click_women
  @ASOS_Testing.asos_shop.clothing
  @ASOS_Testing.asos_shop.new_in
end

Given("I select an item") do
  @ASOS_Testing.asos_shop.select_item
end

When("I click the heart") do
end

Then("I should be able to see my saved item in the saved items page") do
  pending # Write code here that turns the phrase above into concrete actions
end
