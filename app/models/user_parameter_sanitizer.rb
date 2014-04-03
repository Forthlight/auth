class UserParameterSanitizer < Devise::ParameterSanitizer
  def sign_in
    default_params.permit(:login)#, :remember_me)
  end

  def sign_up
    default_params.permit(:username, :first_name, :last_name, :email, :password, :password_confirmation, :role)
  end

  def account_update
    default_params.permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password)
  end
end