class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :duration
      t.string :audio_file
      t.integer :listen_count
      t.integer :rank
      t.references :album, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
