Given(/^I am on Appimation home page/) do
  visit('legacy')
  find(:css, '#start_button')
end

When("I press SignUp button") do
  find(:css, '#signup-b').click 
end

Then("SignUp form appears") do
  unless find(:css, '#signup').visible?
    raise 'Signup form is not visible'
  end
end

Then("I Fill {string} and {string} and {string}") do |email, password, projectName|
  find(:css, '#signup input[type="email"]').send_keys(email)
  find(:css, '#signup input[name=password1]').send_keys(password)
  find(:css, '#signup input[name=password2]').send_keys(password)
  find(:css, '#signup input[name=project_name]').send_keys(projectName)  
  sleep(5)    
end

Then("I Close SingUp form") do
  find(:css, '#signup img.closecross').click
end

Then("I don't see SignUp form") do
  unless !find(:css, '#signup').visible?
    raise 'Signup form is not visible'
  end
end


When("I press top Login button") do
  find(:css, '#login-b').click 
end

Then("Login form appears") do
  unless find(:css, '#login').visible?
    raise 'Signup form is not visible'
  end
end

Then("I enter invalid email {string} and invalid password {string}") do |email, password|
  find(:css, '#login input[name="login"]').send_keys(email)
  find(:css, '#login input[type=password]').send_keys(password)
end

Then("I press Login button in Login form") do
  find(:xpath, '//*[@id="login"]/form/button').click
  sleep(5)
end

Then("I see error message") do
  if find(:css, '#login form div.alert.alert-danger')
      expect(page).to have_content "Username or password is not correct"
    else 
      raise 'Expected error is not present'
  end      
end
