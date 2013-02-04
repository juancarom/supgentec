class Region < ActiveRecord::Base
  attr_accessible :nombre

  has_many :ciudad
end
