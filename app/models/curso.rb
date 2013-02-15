class Curso < ActiveRecord::Base

  attr_accessible :anio, :division, :nombre, :organizacion_id

  belongs_to :organizacion

  attr_accessible :instancias_attributes

  has_many :instancias, :dependent => :destroy
  accepts_nested_attributes_for :instancias, :allow_destroy => true

  def to_s
  	self.anio + " " + self.nombre
  end

end
