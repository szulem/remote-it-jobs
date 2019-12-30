class RegistrationsController < Devise::RegistrationsController
  prepend_before_action :check_captcha, only: [:create]

  private
    def check_captcha
      unless verify_recaptcha
        # flash[:error] = "reCAPTCHA verification failed, please try again."
        self.resource = resource_class.new sign_up_params
        resource.validate # Look for any other validation errors besides Recaptcha
        set_minimum_password_length
        flash.now[:alert] = "reCAPTCHA has to be selected to register."
        flash.delete :recaptcha_error
        respond_with_navigational(resource) { render :new }
      end 
    end
end