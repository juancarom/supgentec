class Instancia < ActiveRecord::Base
  
  attr_accessible :adeudan, :adeudan_mas_de_tres, :adeudan_menos_de_tres, :cantidad_de_alumnos, :curso_id, :fecha, :nombre, :porc_adeuda, :porc_mas_de_tres, :porc_menos_de_tres

  validates :cantidad_de_alumnos, :presence => true
  validates :cantidad_de_alumnos, :numericality => true
  validates :cantidad_de_alumnos, :numericality => { :greater_than => 0, :message => "debe ser mayor a cero" }

  belongs_to :curso

  def calcularPorcentajeAdeudan
  	self.porc_adeuda = self.adeudan * 100 / self.cantidad_de_alumnos
  	self.save
  end

  def calcularPorcentajeAdeudanMasDeTres
  	self.porc_mas_de_tres= self.adeudan_mas_de_tres * 100 / self.cantidad_de_alumnos
  	self.save
  end

  def calcularPorcentajeAdeudanMenosDeTres
  	self.porc_menos_de_tres = self.adeudan_menos_de_tres * 100 / self.cantidad_de_alumnos
  	self.save
  end

end