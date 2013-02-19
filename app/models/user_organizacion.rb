class UserOrganizacion < ActiveRecord::Base
  attr_accessible :organizacion_id, :user_id

  belongs_to :organizacion
  belongs_to :user
end
