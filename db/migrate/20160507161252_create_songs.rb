class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :length_in_seconds

      t.timestamps null: false
    end
  end
end
