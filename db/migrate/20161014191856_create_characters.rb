class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.boolean :death_eater
      t.boolean :dumbledores_army
      t.boolean :order_of_the_phoenix
      t.string :alias
      t.string :wand
      t.date :birthday
      t.string :boggart
      t.string :patronus
      t.references :house, index: true, foreign_key: true
      t.references :school, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
