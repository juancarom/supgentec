class CreateCiudades < ActiveRecord::Migration
  def change
    create_table :ciudades do |t|
      t.integer :region_id
      t.string :nombre

      t.timestamps
    end
  end
end
