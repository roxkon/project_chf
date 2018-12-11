class Transaction < ApplicationRecord
	before_create :set_value
  
	#enum wallet_type: [:free, :vip]
	enum coin_type: [:bitcoin, :ethereum, :pln, :usd]

  belongs_to :user
  belongs_to :wallet

	private

	def set_value
		self.value = 10 *self.amount
	end
end
