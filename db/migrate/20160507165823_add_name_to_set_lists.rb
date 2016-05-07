class AddNameToSetLists < ActiveRecord::Migration
  def change
    add_column :set_lists, :name, :string
  end
end
