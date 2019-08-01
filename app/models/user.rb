class User < ApplicationRecord
    has_secure_password
    has_many :picks 
    has_many :players, through: :picks
    belongs_to :team 
    belongs_to :season 
    has_many :games
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

    def logo 
        if self.team.name == "Mighty Ducks"
            "https://www.nhl94.com/images/logos_lg/Mighty_Ducks.gif"
        elsif self.team.name == "Bruins"
            "https://www.nhl94.com/images/logos_lg/Bruins.gif"
        elsif self.team.name == "Sabres"
            "https://www.nhl94.com/images/logos_lg/Sabres.gif"
        elsif self.team.name == "Flames"
            "https://www.nhl94.com/images/logos_lg/Flames.gif"
        elsif self.team.name == "Blackhawks"
            "https://www.nhl94.com/images/logos_lg/Blackhawks.gif"
        elsif self.team.name == "Stars"
            "https://www.nhl94.com/images/logos_lg/Stars.gif"
        elsif self.team.name == "Red Wings"
            "https://www.nhl94.com/images/logos_lg/Red_Wings.gif"
        elsif self.team.name == "Oilers"
            "https://www.nhl94.com/images/logos_lg/Oilers.gif"
        elsif self.team.name == "Whalers"
            "https://www.nhl94.com/images/logos_lg/Whalers.gif"
        elsif self.team.name == "Panthers"
            "https://www.nhl94.com/images/logos_lg/Panthers.gif"
        elsif self.team.name == "Kings"
            "https://www.nhl94.com/images/logos_lg/Kings.gif"
        elsif self.team.name == "Canadiens"
            "https://www.nhl94.com/images/logos_lg/Canadiens.gif"
        elsif self.team.name == "Devils"
            "https://www.nhl94.com/images/logos_lg/Devils.gif"
        elsif self.team.name == "Islanders"
            "https://www.nhl94.com/images/logos_lg/Islanders.gif"
        elsif self.team.name == "Rangers"
            "https://www.nhl94.com/images/logos_lg/Rangers.gif"
        elsif self.team.name == "Senators"
            "https://www.nhl94.com/images/logos_lg/Senators.gif"
        elsif self.team.name == "Flyers"
            "https://www.nhl94.com/images/logos_lg/Flyers.gif"
        elsif self.team.name == "Penguins"
            "https://www.nhl94.com/images/logos_lg/Penguins.gif"
        elsif self.team.name == "Nordiques"
            "https://www.nhl94.com/images/logos_lg/Nordiques.gif"
        elsif self.team.name == "Sharks"
            "https://www.nhl94.com/images/logos_lg/Sharks.gif"
        elsif self.team.name == "Blues"
            "https://www.nhl94.com/images/logos_lg/Blues.gif"
        elsif self.team.name == "Lightning"
            "https://www.nhl94.com/images/logos_lg/Lightning.gif"
        elsif self.team.name == "Maple Leafs"
            "https://www.nhl94.com/images/logos_lg/Maple_Leafs.gif"
        elsif self.team.name == "Canucks"
            "https://www.nhl94.com/images/logos_lg/Canucks.gif"
        elsif self.team.name == "Capitals"
            "https://www.nhl94.com/images/logos_lg/Capitals.gif"
        elsif self.team.name == "Jets"
            "https://www.nhl94.com/images/logos_lg/Jets.gif"
        end 
    end

    def too_many_forwards?
        if self.forwards >= 6 
            true 
        else
            false 
        end
    end

    def too_many_defensemen?
        if self.defensemen >= 4 
            true 
        else
            false 
        end
    end

    def too_many_goalies?
        if self.goalies >= 2 
            true 
        else
            false 
        end
    end 

end
