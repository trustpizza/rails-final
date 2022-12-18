class Post < ApplicationRecord
  validates :body, presence: true, length: { maximum: 300 }
  validates :title, presence: true

  belongs_to :author, class_name: "User"
end
