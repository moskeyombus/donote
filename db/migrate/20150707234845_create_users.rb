class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_role_type
      t.integer :user_role_id

      t.timestamps null: false
    end
  end
end
