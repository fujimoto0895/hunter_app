class RelationshipsController < ApplicationController
	before_action :authenticate_user!

	def create
		# user_idはこれからふぉろーするひと
        @user = User.find(params[:user_id])
        # ログインしてる人に紐づいた中間テーブルを新規作成し、そこのフォローした人のidにぶちこむ
        follow = current_user.relationships.build(following_id: @user.id)
        if follow.save
            redirect_to posts_url, notice: "フォローしました"
        else
            redirect_to posts_url, alert: "フォローできません"
        end
    end
    
    def destroy
    	# これからフォロー外す人
        @user = User.find(params[:user_id])
        follow = current_user.relationships.find_by!(following_id: @user.id)
        follow.destroy
        redirect_to posts_url, notice: "フォロー解除しました"
    end

end
