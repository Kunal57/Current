class AddNameColumn < ActiveRecord::Migration[5.0]
  def change
  	add_column :links, :name, :string
  end
end
