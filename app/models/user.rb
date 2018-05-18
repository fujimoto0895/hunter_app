class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true, uniqueness: true

  #attachment :photo

  #validates_presence_of :photo

 # acts_as_taggable_on :tags のエイリアス
  acts_as_taggable

  acts_as_ordered_taggable_on :skills, :interests

  has_many :posts, dependent: :destroy
  
  has_many :favorites, dependent: :destroy
  # 自分がフォローされる側からみた中間テーブルとフォローしてくる人たちの話
  # 中間テーブルの名前をfollows（フォローする人）に変更。こっちはフォローされる方(follower_idがむこう(フォローする人)からみておやだから)
  has_many :relationships, foreign_key: :follower_id
  # フォローしてくる人たちを中間テーブルを介してhas_many
  has_many :followings, through: :relationships
  # フォローする側からみた中間テーブルとフォローしている人たちの話
  # 中間テーブルの名前をinverse_follows（フォローする人の逆。）に変更。こっちはフォローする方(following_id（フォローされる人）がむこうからみておやだから)
  has_many :inverse_follows, foreign_key: :following_id, class_name: Relationship
  # フォローしている人たちを中間テーブルを介してhas_many(たくさんフォローできる)
  has_many :followers, through: :inverse_follows

  def followed_by?(user)
    inverse_follows.where(follower_id: user.id).exists?
  end

end
