class Autopeca < ActiveRecord::Base

  scope :pesquisar, ->(query){ where("nome like ?", "%#{query}%" )}

  scope :faltapeca, ->(query){where("estoque like 0")}

end
