class Post < ApplicationRecord
    belongs_to :category, inverse_of: :posts
    mount_uploader :image, PictureUploader
    validates :title, :content, :category_id, :date, :place, presence: true
end
