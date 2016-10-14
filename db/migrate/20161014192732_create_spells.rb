class CreateSpells < ActiveRecord::Migration
  def change
    create_table :spells do |t|
      t.string :name
      t.text :description
      t.boolean :unforgivable

      t.timestamps null: false
    end
  end
end
