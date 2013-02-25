class Curso < ActiveRecord::Base

  attr_accessible :anio, :division, :nombre, :organizacion_id

  belongs_to :organizacion

  attr_accessible :instancias_attributes

  has_many :instancias, :dependent => :destroy
  accepts_nested_attributes_for :instancias, :allow_destroy => true

  validates :anio, :presence => true
  validates :anio, :numericality => true
  validates :anio, :numericality => { :greater_than => 0, :message => "debe ser mayor a cero" }
  
  validates :division, :presence => true

  def to_s
  	self.anio + " " + self.nombre
  end

end
