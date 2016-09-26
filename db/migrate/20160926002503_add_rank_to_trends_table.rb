class AddRankToTrendsTable < ActiveRecord::Migration[5.0]
  def change
		add_column :trends, :rank, :integer
  end
end
