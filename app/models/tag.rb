class Tag < ActiveRecord::Base
	has_many :tag_to_posts
	has many :posts, through: :tag_to_posts
end