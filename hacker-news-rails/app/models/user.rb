class User < ActiveRecord::Base
  has_secure password

  validates :name, uniqueness: true 

  has_many :comments
  has_many :posts
  has_many :post_votes
  has_many :comment_votes
  
end 