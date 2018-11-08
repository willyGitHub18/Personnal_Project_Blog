class Post < ApplicationRecord
    belongs_to :category, inverse_of: :posts
    has_one_attached :image
    validates :title, :content, :category_id, :date, :place, presence: true
end
