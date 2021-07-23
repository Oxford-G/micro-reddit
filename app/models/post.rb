class Post < ApplicationRecord
  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 2, maximum: 10 }
  validates :body, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 2, maximum: 50 }

  belongs_to :user
  has_many :comments
end
