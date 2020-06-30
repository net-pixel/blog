class Article < ApplicationRecord
  belongs_to :user

  has_one_attached :thumbnail
  has_one_attached :banner
  has_rich_text :content


  validates :title, length: { minimum: 5 }
  validates :content, length: { minimum: 25 }
end
