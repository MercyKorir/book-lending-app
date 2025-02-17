class Book < ApplicationRecord
  has_many :borrowings, dependent: :destroy
  has_many :borrowers, through: :borrowings, source: :user
  
    validates :title, :author, :isbn, presence: true
    validates :isbn, uniqueness: true
  
    def available?
      borrowings.where(returned_at: nil).empty?
    end
  
    def current_borrowing
      borrowings.find_by(returned_at: nil)
    end
end