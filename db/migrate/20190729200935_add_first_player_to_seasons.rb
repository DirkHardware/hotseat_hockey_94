class AddFirstPlayerToSeasons < ActiveRecord::Migration[5.2]
  def change
    add_column :seasons, :first_player, :integer
  end
end
