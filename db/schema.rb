# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_02_17_111954) do
  create_table "books", force: :cascade do |t|
    t.string "title", null: false
    t.string "author", null: false
    t.string "isbn", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "cover_url"
    t.text "synopsis"
    t.boolean "visible"
    t.index ["isbn"], name: "index_books_on_isbn", unique: true
  end

  create_table "borrowings", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "book_id", null: false
    t.date "due_date", null: false
    t.datetime "returned_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id", "returned_at"], name: "index_borrowings_on_book_id_and_returned_at", unique: true, where: "returned_at IS NULL"
    t.index ["book_id"], name: "index_borrowings_on_book_id"
    t.index ["user_id"], name: "index_borrowings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "borrowings", "books"
  add_foreign_key "borrowings", "users"
end
