class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :amount
      t.references :fan, index: true, foreign_key: true
      t.references :artist, index: true, foreign_key: true
      t.references :payment_method, index: true, foreign_key: true
      t.string :status

      t.timestamps null: false
    end
  end
end
