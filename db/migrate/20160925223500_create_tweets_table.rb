class CreateTweetsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :tweets do |t|
    	t.string :tweet
    	t.integer :trend_id

    	t.timestamps(null:false)
    end
  end
end
