class LoginTest
	def initialize(pages)
		@pages = pages
	end

	def load_home_page
		@pages.page_home.load
	end

	def home_page_is_visible
		@pages.page_home.visible?
	end

	def open_signup_view
		@pages.page_home.openSignUp
	end

	def verify_signup_form
		@pages.page_home.signUpIsVisible
	end

	def fillSignUpForm
		user = Users.user_with_invalid_credentials
		@pages.page_home.fillSignUpForm(user.email, user.password, user.incPassword, user.projectName) 
	end

	def close_signup
		@pages.page_home.closeSignUp
	end

	def signup_is_not_visible
		@pages.page_home.signUpIsNotVisible
	end

	def open_login_form
		@pages.page_home.openLogin
	end

	def verify_login_form
		@pages.page_home.loginIsVisible
	end

	def enter_login_details
		user = Users.user_with_invalid_credentials
		@pages.page_home.enterLoginCredentials(user.email, user.password)
	end

	def press_login_button_in_login_form
		@pages.page_home.pressLoginInLoginForm
	end

	def verify_login_alert
		@pages.page_home.verifyLoginAlert
	end
end
