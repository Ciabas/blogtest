class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def new 
		@post = Post.net
	end

	def create
		@post = Post.new(posts_params)
	end




	private
	def posts_params
		# params.require(:post).permit(:article  oraz users id ??)
	end

end