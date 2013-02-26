class Instancia < ActiveRecord::Base

  before_validation :validar_datos


  def validar_datos
    if self.cantidad_de_alumnos == nil then self.cantidad_de_alumnos = 0 end
    if self.adeudan == nil then self.adeudan = 0 end
    if self.adeudan_mas_de_tres == nil then self.adeudan_mas_de_tres = 0 end
    if self.adeudan_menos_de_tres == nil then self.adeudan_menos_de_tres = 0 end
  end
  
  attr_accessible :adeudan, :adeudan_mas_de_tres, :adeudan_menos_de_tres, :cantidad_de_alumnos, :curso_id, :fecha, :nombre, :porc_adeuda, :porc_mas_de_tres, :porc_menos_de_tres

  validates :cantidad_de_alumnos, :presence => true
  validates :cantidad_de_alumnos, :numericality => true 
  validates :cantidad_de_alumnos, :numericality => { :greater_than => 0, :message => "debe ser mayor a cero" }

  validates :adeudan, :numericality => { :greater_than_or_equal_to => 0, :message => "debe ser mayor o igual a cero"}
  validates :adeudan, :numericality => { :less_than_or_equal_to => :cantidad_de_alumnos, :message => "debe ser menor a cantidad de alumnos"}

  validates :adeudan_mas_de_tres, :numericality => { :greater_than_or_equal_to => 0, :message => "no puede ser negativo"}
  validates :adeudan_mas_de_tres, :numericality => { :less_than_or_equal_to => :adeudan, :message => "no puede ser mayor a la cantidad de alumnos que adeudan"}

  validates :adeudan_menos_de_tres, :numericality => { :greater_than_or_equal_to => 0, :message => "no puede ser negativo"}
  validates :adeudan_menos_de_tres, :numericality => { :less_than_or_equal_to => :adeudan, :message => "no puede ser mayor a la cantidad de alumnos que adeudan"}



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