class CreateTrendsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :trends do |t|
    	t.string :name
    	t.string :thumbnail

    	t.timestamps(null:false)
    end
  end
end
