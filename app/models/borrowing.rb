class Borrowing < ApplicationRecord
  belongs_to :user
  belongs_to :book

  validates :due_date, presence: true
  validate :book_availability, on: :create
  validate :user_cannot_exceed_limit, on: :create

  scope :active, -> { where(returned_at: nil) }

  before_validation :set_due_date, on: :create

  def return!
    update!(returned_at: Time.current)
  end

  private

  def set_due_date
    self.due_date ||= Date.current + 2.weeks
  end

  def book_availability
    if book && book.borrowings.active.exists?
      errors.add(:book, "is already borrowed")
    end
  end

  MAX_BORROW_LIMIT = 5

  def user_cannot_exceed_limit
    if user.borrowings.active.count >= MAX_BORROW_LIMIT
      errors.add(:user, "has reached the borrowing limit of #{MAX_BORROW_LIMIT}")
    end
  end
end
