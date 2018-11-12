class ApplicationController < ActionController::Base
  before_action :set_locale
  #before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
  
  def default_url_options
    { locale: I18n.locale }
  end

  def after_sign_in_path_for(resource_or_scope)
	  blockchain_path
	end

  protected

   def configure_permitted_parameters
    # devise_parameter_sanitizer.permit(:account_update, keys: [:wallet_attributes => [:id, :network_address]])
    devise_parameter_sanitizer.permit(:account_update) do |user_params|
      user_params.permit( :email, :password, :password_confirmation, :current_password, :wallet_attributes => [:id, :network_address])
    end
  end
  
end
