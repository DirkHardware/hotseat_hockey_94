class Player < ApplicationRecord
    has_many :picks
    has_many :users, through: :picks
end

