class Post < ApplicationRecord
  belongs_to :user
  belongs_to :creator, class_name: 'User'

  has_many :post_editors
  has_many :editors, through: :post_editors, source: :user
end
