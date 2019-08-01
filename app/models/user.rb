class User < ApplicationRecord
    has_secure_password
    has_many :picks 
    has_many :players, through: :picks
    belongs_to :team 
    belongs_to :season 
    # validates :team_id, uniqueness: true 
    validates :username, uniqueness: true 
    validates :username, presence: true 

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

    def too_many_forwards?
        # num = self.picks.select {|pick| pick.player.position == "F"}.count 
        if self.forwards >= 6 
            true 
        else
            false 
        end
    end

    def too_many_defensemen?
        # num = self.picks.select {|pick| pick.player.position == "D"}.count 
        if self.defensemen >= 4 
            true 
        else
            false 
        end
    end

    def too_many_goalies?
        # num = self.picks.select {|pick| pick.player.position == "G"}.count 
        if self.goalies >= 2 
            true 
        else
            false 
        end
    end

end
