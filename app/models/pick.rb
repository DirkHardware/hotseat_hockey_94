class Pick < ApplicationRecord
    belongs_to :player
    belongs_to :user
    validates :player_id, uniqueness: true 

end
