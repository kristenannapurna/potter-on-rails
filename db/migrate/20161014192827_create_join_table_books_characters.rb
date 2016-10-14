class CreateJoinTableBooksCharacters < ActiveRecord::Migration
  def change
  	create_table :books_characters, id: false do |t|
  		t.integer :book_id
  		t.integer :character_id
  end
end
end


