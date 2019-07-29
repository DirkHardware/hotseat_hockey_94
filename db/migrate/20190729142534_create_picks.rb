class CreatePicks < ActiveRecord::Migration[5.2]
  def change
    create_table :picks do |t|
      t.integer :seasonsteam_id
      t.integer :player_id

      t.timestamps
    end
  end
end
