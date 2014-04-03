class AdminParameterSanitizer < Devise::ParameterSanitizer
  def sign_in
    default_params.permit(:email)#, :remember_me)
  end

  def account_update
    default_params.permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password)
  end
end