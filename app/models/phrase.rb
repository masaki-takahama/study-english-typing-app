class Phrase < ApplicationRecord

  belongs_to :user
  has_one_attached :image
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :tag 

  validates :text, presence: true
  validates :tag_id, numericality: { other_than: 1 , message: "can't be blank"}
end
