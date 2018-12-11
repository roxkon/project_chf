class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.references :user, foreign_key: true
      t.references :wallet, foreign_key: true
      t.text :paid_from_address
      t.integer :amount, default: 0
      t.integer :coin_type
      t.integer :course
      t.integer :value, default: 0

      t.timestamps
    end
  end
end
