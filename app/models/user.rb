class User < ApplicationRecord
    has_secure_password
    has_many :borrowings
    has_many :borrowed_books, through: :borrowings, source: :book
  
    validates :email, presence: true, 
                      uniqueness: true,
                      format: { with: URI::MailTo::EMAIL_REGEXP }

    validates :password, length: { minimum: 6 }

    def admin?
        admin
    end
end