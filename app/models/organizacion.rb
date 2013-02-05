class Organizacion < ActiveRecord::Base

  attr_accessible :ciudad_id, :nombre, :numero

  attr_accessible :curso_attributes

  has_many :curso, :dependent => :destroy
  accepts_nested_attributes_for :curso, :allow_destroy => true

end
