class Ciudad < ActiveRecord::Base
  attr_accessible :nombre, :region_id

  belongs_to :region

  def to_s
  	self.nombre
  end

end
