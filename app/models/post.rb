class Post < ActiveRecord::Base
	belongs_to :user
	has_one :category
	
	has_many :tag_to_posts
	has_many :tags, through: :tag_to_posts

end	