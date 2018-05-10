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

Then("I Fill information") do
  find(:css, '#signup input[type="email"]').send_keys('balabala@v.lv')
  find(:css, '#signup input[name=password1]').send_keys('yepthisispassword')
  find(:css, '#signup input[name=password2]').send_keys('yepthisispassword')
  find(:css, '#signup input[name=project_name]').send_keys('my_project')  
  sleep(5)    
end

Then("I Close SingUp form") do
  find(:css, '#signup > form > img.closecross').click
end

Then("I don't see SignUp form") do
  unless !find(:css, '#signup').visible?
    raise 'Signup form is not visible'
  end
end






When("I press SignIn button") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I enter invalid email and password") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I press Login button") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I see error message") do
  pending # Write code here that turns the phrase above into concrete actions
end