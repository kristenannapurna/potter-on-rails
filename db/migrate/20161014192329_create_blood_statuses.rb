class CreateBloodStatuses < ActiveRecord::Migration
  def change
    create_table :blood_statuses do |t|
      t.string :kind
      t.references :character, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
