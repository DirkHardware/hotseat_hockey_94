class Season < ApplicationRecord
    has_many :users
    has_many :teams, through: :users
    has_many :picks, through: :users 
    has_many :players, through: :picks
    validates :team_id, uniqueness: true 


    def draft(first_player_picks = [0, 7, 8, 15, 16, 23, 24, 31, 32, 39, 40, 47], second_player_picks = [1, 6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46], third_player_picks = [2, 5, 10, 13, 18, 21, 26, 29, 34, 37, 42, 45], fourth_player_picks = [3, 4, 11, 12, 19, 20, 27, 28, 35, 36, 43, 44], last_pick = [48])

        first_player = self.users[1]
        second_player = self.users[2]
        third_player = self.users[3]
        fourth_player = self.users[4]

        if first_player_picks.include?(self.picks.length)
            first_player
        elsif second_player_picks.include?(self.picks.length)
            second_player
        elsif third_player_picks.include?(self.picks.length)
            third_player
        elsif fourth_player_picks.include?(self.picks.length)
            fourth_player  
        else 
            first_player
        end
    end

end
