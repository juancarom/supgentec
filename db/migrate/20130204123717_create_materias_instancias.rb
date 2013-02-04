class CreateMateriasInstancias < ActiveRecord::Migration
  def change
    create_table :materias_instancias do |t|
      t.integer :materia_id
      t.integer :instancia_id

      t.timestamps
    end
  end
end
