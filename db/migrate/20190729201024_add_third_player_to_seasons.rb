class AddThirdPlayerToSeasons < ActiveRecord::Migration[5.2]
  def change
    add_column :seasons, :third_player, :integer
  end
end
