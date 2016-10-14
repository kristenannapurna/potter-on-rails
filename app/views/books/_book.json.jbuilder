json.extract! book, :id, :book_title, :book_number, :page_count, :word_count, :date_published, :created_at, :updated_at
json.url book_url(book, format: :json)