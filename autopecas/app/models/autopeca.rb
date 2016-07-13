class Autopeca < ActiveRecord::Base

  scope :pesquisar, ->(query){ where("nome like ?", "%#{query}%" )}

end
