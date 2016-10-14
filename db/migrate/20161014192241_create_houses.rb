class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :name
      t.string :founder
      t.text :description
      t.string :color
      t.string :animal
      t.string :element
      t.references :school, index: true, foreign_key: true
      t.string :ghost

      t.timestamps null: false
    end
  end
end
