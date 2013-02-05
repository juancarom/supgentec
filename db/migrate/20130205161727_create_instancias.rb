class CreateInstancias < ActiveRecord::Migration
  def change
    create_table :instancias do |t|
      t.integer :curso_id
      t.integer :cantidad_de_alumnos
      t.integer :adeudan
      t.integer :adeudan_mas_de_tres
      t.integer :adeudan_menos_de_tres
      t.date :fecha
      t.string :nombre
      t.float :porc_adeuda
      t.float :porc_mas_de_tres
      t.float :porc_menos_de_tres

      t.timestamps
    end
  end
end
