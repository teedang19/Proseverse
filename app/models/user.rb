class User < ActiveRecord::Base

  has_secure_password
  has_many :blogs, foreign_key: "author_id"
  has_many :comments, foreign_key: "author_id"
  has_many :commented_posts, through: :comments, source: :post
  validates :username, presence: {message: "Error: username is a mandatory field"},
                       uniqueness: {message: "Error: An account already exists with this username."}

end
