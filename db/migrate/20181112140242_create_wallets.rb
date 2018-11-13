class CreateWallets < ActiveRecord::Migration[5.2]
  def change
    create_table :wallets do |t|
      t.string :code, null: false
      t.integer :coin_type
      t.integer :limit, default: 0
      t.integer :wallet_type, default: 0
      t.string :network_address      

      t.timestamps
    end
  end
end
