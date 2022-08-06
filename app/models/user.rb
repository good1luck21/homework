class User < ApplicationRecord
  has_secure_password
  has_many :posts
  has_many :likes

  def likes?(post)
    likes.where(post_id: post.id).any?
  end
end
