class Post < ApplicationRecord
    belongs_to :user
    has_many :tags, through: :post_tags

    has_many :answer_posts, class_name: 'Post'
    belongs_to :parent_post, class_name: 'Post', optional: true

    validates :title, :content, :user_id, presence: { message: "can't be blank" }
    validates :answers_count, :likes_count, numericality: { greater_than_or_equal_to: 0 }
    validates :content, presence: { message: "can't be blank" }
    validates :user_id, presence: { message: "can't be blank" }
    validates :answers_count, numericality: { greater_than_or_equal_to: 0, message: "should be equal to or greater than 0" }
    validates :likes_count, numericality: { greater_than_or_equal_to: 0, message: "should be equal to or greater than 0" }

    before_validation :set_default_published_at

    private

    def set_default_published_at
        self.published_at ||= Time.current
    end
end
