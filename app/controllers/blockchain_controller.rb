class BlockchainController < ApplicationController
	before_action :authenticate_user!

  def index
  	@wallet = current_user.wallet
  	@user = current_user
  	
  	if @wallet
  		redirect_to edit_user_registration_path
  	end
  end

  def token_request
  end

  def dashboard
  end
end
