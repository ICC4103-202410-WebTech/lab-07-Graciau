class User < ApplicationRecord
    has_many :posts
    validates :name, presence: { message: "can't be blank" }
    validates :email, presence: { message: "can't be blank" }, uniqueness: { message: "is already taken" }, format: { with: URI::MailTo::EMAIL_REGEXP, message: "is not a valid email"}
    validates :password, presence: { message: "can't be blank" }, length: { minimum: 6, message: "should be at least 6 characters long" }

    
end