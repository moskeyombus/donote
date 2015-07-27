class CreateFans < ActiveRecord::Migration
  def change
    create_table :fans do |t|
      t.string :name, null: false

      t.timestamps null: false
    end
  end
end
