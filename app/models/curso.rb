class Curso < ActiveRecord::Base

  attr_accessible :anio, :division, :nombre, :organizacion_id

  belongs_to :organizacion

  attr_accessible :instancia_attributes

  has_many :instancia, :dependent => :destroy
  accepts_nested_attributes_for :instancia, :allow_destroy => true

  def to_s
  	self.anio + " " + self.nombre
  end

end
