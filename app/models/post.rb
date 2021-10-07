class Post < ApplicationRecord
  belongs_to :user
  #active storage rails 5+
  has_one_attached :image
  has_one_attached :banner
  # rich text editor rails 6+
  has_rich_text :body

  validates :title, length: {minimum: 5}
  validates :body, length: {minimum: 20}

  # paginagion
  self.per_page = 10

  # firnedly id
  extend FriendlyId
  friendly_id :title, use: :slugged

  #resize image
  def optimize_image (image, x ,y)
    return image.variant(resize_to_fill: [x, y]).processed
  end
end
