class CreateInstanciaMaterias < ActiveRecord::Migration
  def change
    create_table :instancia_materias do |t|
      t.integer :instancia_id
      t.integer :materia_id

      t.timestamps
    end
  end
end
