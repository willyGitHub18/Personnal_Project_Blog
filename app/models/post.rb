class Post < ApplicationRecord
  belongs_to :category, inverse_of: :posts
  has_one_attached :image
  validates :title, :content, :category_id, :date, :place, presence: true
  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]

  def should_generate_new_friendly_id?
    slug.blank? || title_changed?
  end
end
