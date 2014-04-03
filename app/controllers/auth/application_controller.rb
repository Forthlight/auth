module Auth
  class ApplicationController < ActionController::Base
    before_filter :devise_parameter_sanitizer, if: :devise_controller?

    protected

    def devise_parameter_sanitizer
      if resource_class == Member::User
        UserParameterSanitizer.new(Member::User, :user, params)
      elsif resource_class == Member::User
        AdminParameterSanitizer.new(Administration::Admin, :admin, params)
      else
        super # Use the default one
      end
    end

    def after_sign_out_path_for(resource) 
      main_app.root_path
    end

    def after_sign_in_path_for(resource)
      case resource
        when Member::User then member.root_path 
        when Administration::Admin then administration.root_path
      end
    end
  end
end
