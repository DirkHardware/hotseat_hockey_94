class User < ApplicationRecord
    has_secure_password
    has_many :picks 
    has_many :players, through: :picks
    belongs_to :team 
    belongs_to :season 
    validates :team_id, uniqueness: true 

    def forwards
        self.players.select do |player|
            player.position == "F"
        end.count
    end

    def defensemen
        self.players.select do |player|
            player.position == "D"
        end.count
    end

    def goalies
        self.players.select do |player|
            player.position == "G"
        end.count
    end
end
