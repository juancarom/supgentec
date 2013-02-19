class CreateUserOrganizaciones < ActiveRecord::Migration
  def change
    create_table :user_organizaciones do |t|
      t.integer :user_id
      t.integer :organizacion_id

      t.timestamps
    end
  end
end
