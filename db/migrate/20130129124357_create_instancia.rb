class CreateInstancia < ActiveRecord::Migration
  def change
    create_table :instancia do |t|
      t.integer :curso_id
      t.string :nombre
      t.date :fecha
      t.integer :cantidad_de_alumnos
      t.integer :varones
      t.integer :mujeres

      t.timestamps
    end
  end
end
