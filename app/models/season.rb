class Season < ApplicationRecord
    has_many :users
    has_many :teams, through: :users
    has_many :picks, through: :users 

    # User.all.each do |user|
    #     if user.season_id == self.last 
    #         user_array << user 
    #     end 
    # end

    users_array = []
    User.all.each do |user|
        users_array << user.username
    end
    users_array.shuffle 

    first_player = users_array[0]
    second_player = users_array[1]
    third_player = users_array[2]
    fourth_player = users_array[3]

    first_player_picks = [0, 7, 8, 15, 16, 23, 24, 31, 32, 39, 40, 47]
    second_player_picks = [1, 6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46]
    third_player_picks = [2, 5, 10, 13, 18, 21, 26, 29, 34, 37, 42, 45]
    fourth_player_picks = [3, 4, 11, 12, 19, 20, 27, 28, 35, 36, 43, 44]

    def draft(first_player_picks = [0, 7, 8, 15, 16, 23, 24, 31, 32, 39, 40, 47], second_player_picks = [1, 6, 9, 14, 17, 22, 25, 30, 33, 38, 41, 46], third_player_picks = [2, 5, 10, 13, 18, 21, 26, 29, 34, 37, 42, 45], fourth_player_picks = [3, 4, 11, 12, 19, 20, 27, 28, 35, 36, 43, 44])
       
        users_array = []
        User.all.each do |user|
            users_array << user.username
        end
        users_array.shuffle 
    
        first_player = users_array[0]
        second_player = users_array[1]
        third_player = users_array[2]
        fourth_player = users_array[3]

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
