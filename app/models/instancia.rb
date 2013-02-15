class Instancia < ActiveRecord::Base
  
  attr_accessible :adeudan, :adeudan_mas_de_tres, :adeudan_menos_de_tres, :cantidad_de_alumnos, :curso_id, :fecha, :nombre, :porc_adeuda, :porc_mas_de_tres, :porc_menos_de_tres

  belongs_to :curso

  def calcularPorcentajeAdeudan
  	self.porc_adeuda = self.adeudan * 100 / self.cantidad_de_alumnos
  	self.save
  end

end
