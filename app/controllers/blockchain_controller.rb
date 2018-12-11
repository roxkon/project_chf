class BlockchainController < ApplicationController
	before_action :authenticate_user!

  def index
  	@wallet = current_user.wallet
 	
  end

  def token_request
  end

  def dashboard
  	@wallet = current_user.wallet
  	@user = current_user
  end

  def create_transaction
    @wallet = current_user.wallet
    @user = current_user

    @transaction = Transaction.new( coin_type: params[:transaction][:coin_type],
                                    paid_from_address: params[:transaction][:paid_from_address], 
                                    amount: params[:transaction][:amount],
                                    user_id: @user.id,
                                    wallet_id: @wallet.id)
    p @transaction.inspect
    respond_to do |format|
      if @transaction
        @transaction.save
        format.js { render partial: 'blockchain/choose_payment' }
      else
        # fucked up!!
        format.html { redirect_to blockchain_path, notice: 'ERROR' }
      end
    end
  end
end
