class ChangePicksSeasonsteamIdToUserId < ActiveRecord::Migration[5.2]
  def change
    rename_column :picks, :seasonsteam_id, :user_id
  end
end
