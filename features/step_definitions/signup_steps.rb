Given(/^I am on Appimation home page/) do
  @pages.page_home.load
  @pages.page_home.visible?
end

When("I press SignUp button") do
  @pages.page_home.openSignUp 
end

Then("SignUp form appears") do
  @pages.page_home.signUpIsVisible
end

Then("I Fill {string} and {string} and {string}") do |email, password, projectName|
  @pages.page_home.fillSignUpFormWithCorrectData(email, password, projectName) 
  sleep(5)    
end

Then("I Close SingUp form") do
  @pages.page_home.closeSignUp
end

Then("I don't see SignUp form") do
  @pages.page_home.signUpIsNotVisible
end


When("I press top Login button") do
  @pages.page_home.openLogin
end

Then("Login form appears") do
  @pages.page_home.loginIsVisible
end

Then("I enter invalid email {string} and invalid password {string}") do |email, password|
  @pages.page_home.enterLoginCredentials(email, password)
end

Then("I press Login button in Login form") do
  @pages.page_home.pressLoginInLoginForm
  sleep(5)
end

Then("I see error message") do
  @pages.page_home.verifyLoginAlert
end      
