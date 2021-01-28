class User < ApplicationRecord
  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 2, maximum: 10 }
  validates :password, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 2, maximum: 10 }

  has_many :posts
  has_many :comments
end
