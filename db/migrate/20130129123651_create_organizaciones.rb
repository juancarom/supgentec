class CreateOrganizaciones < ActiveRecord::Migration
  def change
    create_table :organizaciones do |t|
      t.integer :ciudad_id
      t.integer :numero
      t.string :nombre

      t.timestamps
    end
  end
end
