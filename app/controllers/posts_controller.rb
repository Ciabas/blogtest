class PostsController < ApplicationController
	before_action :authenticate_user! 

	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
		@users = @post.users
	end 

	def new 
		@post = Post.new
	end

	def create
		@post = Post.new(posts_params)
		@post.user = current_user
		if @post.save
			redirect_to posts_path
		else
			render 'new'
		end	
	end

	private
	def posts_params
		 params.require(:post).permit(:article, :user_id)
	end

end