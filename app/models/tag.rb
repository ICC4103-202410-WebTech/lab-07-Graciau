class Tag < ApplicationRecord
    has_many :posts, through: :post_tags

    validates :name, presence: { message: "can't be blank" }, uniqueness: { message: "is already taken" }

end