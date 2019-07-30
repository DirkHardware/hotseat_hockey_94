class Season < ApplicationRecord
    has_many :users
    has_many :teams, through: :users
    has_many :picks, through: :users 

    # def order 
    #     order_array = []
    #     if self.users.length == 4 && self.picks.length == 0
    #         self.users.each do |user|
    #             order_array << user
    #         end
    #     order_array
    #     end
    # end

    def draft(first_player_picks = [0, 7, 8, 15, 16, 23, 24, 31, 32, 39, 40, 47], second_player_picks = [1, 6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46], third_player_picks = [2, 5, 10, 13, 18, 21, 26, 29, 34, 37, 42, 45], fourth_player_picks = [3, 4, 11, 12, 19, 20, 27, 28, 35, 36, 43, 44])

        first_player = self.users.first
        second_player = self.users.second
        third_player = self.users.third
        fourth_player = self.users.last

        if first_player_picks.include?(self.picks.length)
            first_player
        elsif second_player_picks.include?(self.picks.length)
            second_player
        elsif third_player_picks.include?(self.picks.length)
            third_player
        elsif fourth_player_picks.include?(self.picks.length)
            fourth_player    
        end
    end

end
