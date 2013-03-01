class Materia < ActiveRecord::Base
  attr_accessible :name

  has_many :instancia_materia
  has_many :instancia, :through => :instancia_materia
  validates :name, :presence => true
  validates :name, :uniqueness => true
  def to_s
    self.name
  end
end
