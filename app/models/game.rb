class Game < ApplicationRecord
  belongs_to :away, class_name: "User"
  belongs_to :home, class_name: "User"
  belongs_to :season

end

