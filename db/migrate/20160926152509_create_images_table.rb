class CreateImagesTable < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
    	t.string :url
    	t.integer :trend_id

    	t.timestamps(null:false)
    end
  end
end
