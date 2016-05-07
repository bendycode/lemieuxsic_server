class CreateSetLists < ActiveRecord::Migration
  def change
    create_table :set_lists do |t|
      t.integer :target_length_in_seconds

      t.timestamps null: false
    end
  end
end
