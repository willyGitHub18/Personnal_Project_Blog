class Post < ApplicationRecord
    belongs_to :category, inverse_of: :posts
    validates :title, :content, :category_id, :date, :place, presence: true
end
