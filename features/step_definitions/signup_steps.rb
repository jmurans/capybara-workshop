Given(/^I am on Appimation home page/) do
  @tests.login_tests.load_home_page
  @tests.login_tests.home_page_is_visible
end

When("I press SignUp button") do
  @tests.login_tests.open_signup_view 
end

Then("SignUp form appears") do
  @tests.login_tests.verify_signup_form
end

Then("I Fill SignUp data") do
  @tests.login_tests.fill_incorrect_signup_data
  sleep(5)    
end

Then("I Close SingUp form") do
  @tests.login_tests.close_signup
end

Then("I don't see SignUp form") do
  @tests.login_tests.signup_is_not_visible
end


When("I press top Login button") do
  @tests.login_tests.open_login_form
end

Then("Login form appears") do
  @tests.login_tests.verify_login_form
end

Then("I enter invalid email credentials") do 
  @tests.login_tests.enter_login_details
end

Then("I press Login button in Login form") do
  @tests.login_tests.press_login_button_in_login_form
  sleep(5)
end

Then("I see error message") do
  @tests.login_tests.verify_login_alert
end      
