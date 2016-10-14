class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :book_title
      t.integer :book_number
      t.integer :page_count
      t.integer :word_count
      t.date :date_published

      t.timestamps null: false
    end
  end
end
