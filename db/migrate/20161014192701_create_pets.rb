class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :type
      t.references :character, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
