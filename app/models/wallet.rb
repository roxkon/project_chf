require 'csv'

class Wallet < ApplicationRecord
	before_create :set_code
	enum wallet_type: [:free, :vip]
	enum coin_type: [:bitcoin, :usd, :pln, :weedTona, :imperial, :psitech, :indigo]

	belongs_to :user, inverse_of: :wallet, optional: true
	has_many :transactions

  accepts_nested_attributes_for :transactions

	def self.to_csv
		attributes = %w{id code wallet_type}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |wallet|
        csv << attributes.map{ |attr| wallet.send(attr) }
      end
    end
	end

	private

	def set_code
		self.code = SecureRandom.hex(8)
	end
end
