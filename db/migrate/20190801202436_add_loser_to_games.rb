class AddLoserToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :loser, :string
  end
end
