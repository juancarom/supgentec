class CreateCursos < ActiveRecord::Migration
  def change
    create_table :cursos do |t|
      t.integer :organizacion_id
      t.integer :anio
      t.integer :division
      t.string :nombre

      t.timestamps
    end
  end
end
