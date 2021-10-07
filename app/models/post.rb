class Post < ApplicationRecord
  belongs_to :user
  #active storage rails 5+
  has_one_attached :image
  has_one_attached :banner
  # rich text editor rails 6+
  has_rich_text :body

  validates :title, length: min : 5
  validates :body, length: min :20

  #resize image
  def optimize_image (image, x ,y)
    return image.variant(resize_to_fill: [x, y]).processed
  end
end
