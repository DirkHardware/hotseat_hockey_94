class CreateSeasons < ActiveRecord::Migration[5.2]
  def change
    create_table :seasons do |t|
      t.integer :number

      t.timestamps
    end
  end
end
