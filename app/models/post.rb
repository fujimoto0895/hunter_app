class Post < ApplicationRecord

 belongs_to :user

 attachment :photo
 
 validates_presence_of :photo

 acts_as_ordered_taggable_on :interests
 # acts_as_taggable_on :tags のエイリアス
 acts_as_taggable           

 has_many :favorites, dependent: :destroy

 	def favorited_by? user
    	favorites.where(user_id: user.id).exists?
 	end

end
