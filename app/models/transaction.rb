class Transaction < ApplicationRecord
	before_create :set_value
  
	#enum wallet_type: [:free, :vip]
	enum coin_type: [:bitcoin, :usd, :pln, :weedTona, :imperial, :psitech, :indigo]

  belongs_to :user
  belongs_to :wallet

	private

	def set_value
		self.value = 10 *self.amount
	end
end
