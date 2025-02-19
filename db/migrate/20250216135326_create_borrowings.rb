class CreateBorrowings < ActiveRecord::Migration[8.0]
  def change
    create_table :borrowings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true
      t.date :due_date, null: false
      t.datetime :returned_at
      t.timestamps
    end

    add_index :borrowings, [:book_id, :returned_at], unique: true, where: "returned_at IS NULL"
  end
end
