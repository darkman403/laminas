class CreateLaminas < ActiveRecord::Migration[7.0]
  def change
    create_table :laminas do |t|
      t.string :lamref, null: false, unique: true
      t.string :lamnombre, null: false

      t.timestamps
    end
  end
end
