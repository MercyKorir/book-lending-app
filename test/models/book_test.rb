require "test_helper"

class BookTest < ActiveSupport::TestCase
  test "should validate presence of required fields" do
    book = Book.new
    assert_not book.valid?
    assert_includes book.errors[:title], "can't be blank"
    assert_includes book.errors[:author], "can't be blank"
    assert_includes book.errors[:isbn], "can't be blank"
  end

  test "should validate unique ISBN" do
    existing = books(:one)
    book = Book.new(isbn: existing.isbn)
    assert_not book.valid?
    assert_includes book.errors[:isbn], "has already been taken"
  end
end
