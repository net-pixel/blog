class Article < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_one_attached :thumbnail
  has_one_attached :banner
  has_rich_text :body


  validates :title, length: { minimum: 5 }
  validates :body, length: { minimum: 25 }
end