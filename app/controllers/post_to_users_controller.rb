class PostToUserController < ApplicationController
	def showPostsFromUser
		@posts_from_user = PostToUser.where(id_user: params[:id_user])
	end

	def showAuthorsOfPost
		@authors_of_post = PostToUser.where(id_post: params[:id_post])
	end
end