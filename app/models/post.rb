class Post < ActiveRecord::Base
  belongs_to :blog
  has_many :taggings
  has_many :tags, through: :taggings
  has_many :comments
  has_many :commenters, through: :comments, source: :author
end
