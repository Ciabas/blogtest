class Post < ActiveRecord::Base
	has_many :post_to_users
	has_many :user, through: :post_to_users

	has_one :category
	
	has_many :tag_to_posts
	has_many :tags, through: :tag_to_posts
end