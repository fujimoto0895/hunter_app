class Relationship < ApplicationRecord
	
	# ユーザーの中のフォローされる人たちに所属。勝手につけた名前。
	belongs_to :follower, class_name: User
	# ユーザーの中のフォローする人たちに所属。勝手につけた名前。
    belongs_to :following, class_name: User

    # 空欄抜き
    validates :follower_id, presence: true
	validates :following_id, presence: true
	# 同じ人を二回フォローできないようにしてる
	validates :following_id, uniqueness: { scope: :follower_id }

end
