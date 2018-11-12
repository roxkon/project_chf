class RegistrationsController < Devise::RegistrationsController

	protected

  def after_sign_up_path_for(resource)
    blockchain_path
  end

end