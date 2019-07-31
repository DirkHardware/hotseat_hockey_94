class AddFourthPlayerToSeasons < ActiveRecord::Migration[5.2]
  def change
    add_column :seasons, :fourth_player, :integer
  end
end
