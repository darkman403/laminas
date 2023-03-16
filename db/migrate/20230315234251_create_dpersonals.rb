class CreateDpersonals < ActiveRecord::Migration[7.0]
  def change
    create_table :dpersonals do |t|
      t.integer :cedula, null: false, unique: true
      t.string :nombre, null: false
      t.string :genero, null: false
      t.string :email, null: false, unique: true
      t.string :pais, null: false
      t.string :departamento, null: false
      t.string :ciudad, null: false
      t.string :direccion, null: false

      t.timestamps
    end
  end
end
