class User < ApplicationRecord
  validates :username, presence: { message: "Username must be specified!" }, uniqueness: true, length: { in: 6..20, message: "Length must be in between 6 and 20" }
  has_many :posts
  has_many :comments
end
