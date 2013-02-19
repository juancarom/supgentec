class Organizacion < ActiveRecord::Base

  attr_accessible :ciudad_id, :nombre, :numero

  attr_accessible :curso_attributes

  belongs_to :ciudad
  has_many :curso, :dependent => :destroy
  accepts_nested_attributes_for :curso, :allow_destroy => true

  has_many :user_organizacion
  has_many :user, :through => :user_organizacion


  def to_s
  	self.nombre
  end

end
