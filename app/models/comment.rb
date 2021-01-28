class Comment < ApplicationRecord
  validates :commenter, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 2, maximum: 10 }
  validates :body, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 2, maximum: 50 }

  belongs_to :user
  belongs_to :post
end
