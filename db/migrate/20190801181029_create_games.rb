class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.references :away, foreign_key: false
      t.references :home, foreign_key: false
      t.string :date
      t.belongs_to :season, foreign_key: true

      t.timestamps
    end
    add_foreign_key :games, :users, column: :home_id
    add_foreign_key :games, :users, column: :away_id
  end
end
