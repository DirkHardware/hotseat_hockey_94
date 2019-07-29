class Season < ApplicationRecord
    has_many :users
    has_many :teams, through: :users 

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

    def draft
        
    end

    odd_round = 1, 2, 3, 4
    even_round = 4, 3, 2, 1

end
