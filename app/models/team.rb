class Team < ApplicationRecord
    has_many :users 
    has_many :seasons, through: :users 
end
