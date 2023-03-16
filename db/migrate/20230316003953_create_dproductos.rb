class CreateDproductos < ActiveRecord::Migration[7.0]
  def change
    create_table :dproductos do |t|
      t.integer :cedula, null: false
      t.string :poliza, null: false
      t.integer :valaseg, null: false
      t.string :ciaaseg, null: false
      t.string :estadoseg, null: false
      t.string :pdtaseg, null: false
	    t.references :dpersonal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
