class Perfumn < ApplicationRecord
  validates :description, :price, :quality, :review, :url_image, presence: true
  validates :description, uniqueness: true
end
