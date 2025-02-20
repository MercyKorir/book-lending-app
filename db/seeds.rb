# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.find_or_create_by!(email: "admin@books.com") do |user|
    user.password = "admin123"
    user.password_confirmation = "admin123"
    user.admin = true
end

books = [
  { title: "Fantastic Mr. Fox", author: "Roald Dahl", isbn: "9780140328721", cover_url: "https://covers.openlibrary.org/b/id/8739161-L.jpg", synopsis: nil, visible: true },
  { title: "The Adventures of Tom Sawyer", author: "Mark Twain", isbn: "0451526538", cover_url: "https://covers.openlibrary.org/b/id/11403183-L.jpg", synopsis: "Includes bibliographical references (p. 213-216).", visible: true },
  { title: "To Kill a Mockingbird", author: "Harper Lee", isbn: "0061120081", cover_url: "https://covers.openlibrary.org/b/id/14351032-L.jpg", synopsis: "USA/CAN", visible: true },
  { title: "The Great Gatsby", author: "F. Scott Fitzgerald", isbn: "0743273567", cover_url: "https://covers.openlibrary.org/b/id/14314120-L.jpg", synopsis: nil, visible: true },
  { title: "Moby Dick, or, The Whale", author: "Herman Melville", isbn: "067978327X", cover_url: "https://covers.openlibrary.org/b/id/421986-L.jpg", synopsis: nil, visible: true },
  { title: "Sapiens: A Brief Story of Humankind", author: "Yuval Noah Harari", isbn: "9780062316097", cover_url: "https://covers.openlibrary.org/b/id/14369194-L.jpg", synopsis: nil, visible: true },
  { title: "The Road", author: "Cormac McCarthy", isbn: "9780307387899", cover_url: "https://covers.openlibrary.org/b/id/9557220-L.jpg", synopsis: "US/CAN", visible: true },
  { title: "On the Road", author: "Jack Kerouac", isbn: "9780140283297", cover_url: "https://covers.openlibrary.org/b/id/9064100-L.jpg", synopsis: nil, visible: true },
  { title: "It Ends With Us", author: "Colleen Hoover", isbn: "9781501110368", cover_url: "https://covers.openlibrary.org/b/id/14831831-L.jpg", synopsis: nil, visible: true },
  { title: "After (After Series, Book 1)", author: "Anna Todd", isbn: "9781476792484", cover_url: "https://covers.openlibrary.org/b/id/10236793-L.jpg", synopsis: nil, visible: true }
]

books.each do |book_data|
    Book.find_or_create_by!(isbn: book_data[:isbn]) do |book|
      book.title = book_data[:title]
      book.author = book_data[:author]
      book.cover_url = book_data[:cover_url]
      book.synopsis = book_data[:synopsis]
      book.visible = book_data[:visible]
    end
end

puts