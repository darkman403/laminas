class CreateSolicituds < ActiveRecord::Migration[7.0]
  def change
    create_table :solicituds do |t|
      t.integer :cedula, null: false
      t.string :lamref, null: false
      t.string :lamnombre, null: false
      t.integer :carta
      t.integer :empaque
      t.datetime :enviadoen
	t.references :dproducto, null: false, foreign_key: true
      t.timestamps
    end
  end
end
