class SessionsController < Devise::SessionsController

  def new
    super
  end

  def create
    self.resource = warden.authenticate!(auth_options)
    set_flash_message(:notice, :signed_in)
    sign_in(resource_name, resource)
    yield resource if block_given?

    if !session.blank?
      redirect_to blockchain_dashboard_path
      session = nil
    else
    	redirect_to blockchain_dashboard_path
      #respond_with resource, :location => after_sign_in_path_for(resource)
    end
  end

end