class Game < ApplicationRecord
  belongs_to :away, class_name: "User"
  belongs_to :home, class_name: "User"
  belongs_to :season


  def sortable(column, title = "Wins")
    title ||= column.titleize
    css_class = column == sort_column ? "Wins #{sort_direction}" : nil
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    link_to title, {:sort => column, :direction => direction}, {:class => css_class}
  end

end

