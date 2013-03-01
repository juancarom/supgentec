class CambiarNombrePorNameEnMateria < ActiveRecord::Migration
  
  def up
  	rename_column :materias, :nombre, :name
  end

  def down
  	rename_column :materias, :name, :nombre
  end

end
