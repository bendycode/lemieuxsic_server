class CreateSetListsSongs < ActiveRecord::Migration
  def change
    create_table :set_lists_songs, id: false do |t|
    	t.references :set_list
    	t.references :song
    end
    add_index :set_lists_songs, [:set_list_id, :song_id]
    add_index :set_lists_songs, [:song_id, :set_list_id]
  end
end
