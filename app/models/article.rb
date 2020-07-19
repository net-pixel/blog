class Article < ApplicationRecord
  belongs_to :user
  has_one_attached :thumbnail
  has_one_attached :banner
  has_rich_text :body
  acts_as_taggable


  validates :title, length: { minimum: 5 }
  validates :body, length: { minimum: 25 }

  scope :body, -> (search_param = nil) {
    return if search_param.blank?
    joins("INNER JOIN action_text_rich_texts ON action_text_rich_texts.record_id = articles.id AND action_text_rich_texts.record_type = 'Article'")
    .where("action_text_rich_texts.body LIKE ? OR articles.title LIKE ? ", "%#{search_param}%", "%#{search_param}%")
  }

  def self.ransackable_scopes(auth_object = nil)
    %i(body)
  end
  
end