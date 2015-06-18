class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end 

	def new 
		@post = Post.new
	end

	def create
		@post = Post.new(posts_params)
		#gdzie tu zwiazac post z userem
		if @post.save
			redirect_to posts_path
		else
			render 'new'
		end	
	end


	private
	def posts_params
		 params.require(:post).permit(:article)
	end

end