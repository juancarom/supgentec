class InstanciaMateria < ActiveRecord::Base
  attr_accessible :instancia_id, :materia_id
  belongs_to :instancia_id
  belongs_to :materia_id
end
