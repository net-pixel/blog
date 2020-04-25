class Article < ApplicationRecord
  has_rich_text :content

  validates :title, length: { minimum: 5 }
  validates :content, length: { minimum: 25 }
end
