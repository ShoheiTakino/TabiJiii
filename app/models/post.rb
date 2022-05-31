class Post < ApplicationRecord

  belongs_to :user

  validates :title,     presence: true
  validates :content,     presence: true
  validates :province_id, presence: true, numericality: { other_than: 1, message: "can't be blank" }
end
