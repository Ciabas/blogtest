class Post < ActiveRecord::Base
	has_many :post_to_users
	has_many :users, through: :post_to_users

	has_one :category
	
	has_many :tag_to_posts
	has_many :tags, through: :tag_to_posts


	def userPosts(user)
		userPosts = Post.where(users: user)
	end
end	