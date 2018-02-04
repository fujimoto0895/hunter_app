class FavoritesController < ApplicationController
	before_action :authenticate_user!

	def create
		@post = Post.find(params[:post_id])
		@favorite = current_user.favorites.build(post:@post) 

		if @favorite.save
			redirect_to posts_url, notice:"いいねしました"
		else
			redirect_to posts_url, alert:"この記録はいいねできません"
		end
		
	end

	def destroy
		@favorite = current_user.favorites.find_by!(post_id:params[:post_id])
		@favorite.destroy
		redirect_to posts_url, notice:"いいねを解除しました"
	end
end
