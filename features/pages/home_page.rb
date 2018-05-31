class HomePage < BasePage
    attr_accessor :button_start
  def initialize
    @button_start = Element.new(:css, '#start_button')
    @button_login = Element.new(:css, '#login-b')
    @button_signup = Element.new(:css, '#signup-b')
    @form_signup = Element.new(:css, '#signup')
    @button_close_signup = Element.new(:css, '#signup img.closecross')
    @input_signup_email = Element.new(:css, '#signup input[type="email"]')
    @input_signup_password = Element.new(:css, '#signup input[name=password1]')
    @input_signup_rep_password = Element.new(:css, '#signup input[name=password2]')
    @input_signup_project = Element.new(:css, '#signup input[name=project_name]')
    @form_login = Element.new(:css, '#login')
    @input_login_name = Element.new(:css, '#login input[name="login"]')
    @input_login_password = Element.new(:css, '#login input[name="password"]')
    @button_login_form_login = Element.new(:css, '#login .button')
    @alert_login = Element.new(:css, '#login form div.alert.alert-danger')
  end

  def openSignUp
    @button_signup.click
  end   

  def closeSignUp
    @button_close_signup.click
  end


  #TODO: Refector this visible invisible shitcode
  def signUpIsVisible
    @form_signup.isVisible
    @button_close_signup.isVisible
    @input_signup_email.isVisible
    @input_signup_password.isVisible
    @input_signup_rep_password.isVisible
    @input_signup_project.isVisible
  end

  #TODO: Refector this visible invisible shitcode
  def signUpIsNotVisible
    !@form_signup
    !@button_close_signup
    !@input_signup_email
    !@input_signup_password
    !@input_signup_rep_password
    !@input_signup_project
  end

  def fillSignUpFormWithIncorrectData(email, password, incPassword, projectName)
    @input_signup_email.send_keys email
    @input_signup_password.send_keys password
    @input_signup_rep_password.send_keys incPassword
    @input_signup_project.send_keys projectName
  end

  
  def visible?
    @button_start.visible?
    @button_login.visible?
    @button_signup.visible?
  end

  def openLogin
    @button_login.click
  end

  def loginIsVisible
    @form_login.isVisible
    @input_login_name.isVisible
    @input_login_password.isVisible
  end

  def enterLoginCredentials(email, password)
      @input_login_name.send_keys email
      @input_login_password.send_keys password
  end

  def pressLoginInLoginForm
      @button_login_form_login.click
  end

  def verifyLoginAlert
    @alert_login
  end

  def load
    visit('legacy')
  end
end
