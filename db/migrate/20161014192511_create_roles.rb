class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :role
      t.string :place_of_employment
      t.string :department
      t.references :characters, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
