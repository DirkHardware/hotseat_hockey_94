class AddSecondPlayerToSeasons < ActiveRecord::Migration[5.2]
  def change
    add_column :seasons, :second_player, :integer
  end
end
