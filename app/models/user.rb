class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :pictures , :class_name => "Picture", :foreign_key => "user_id"
  has_many :likes , :class_name => "Like", :foreign_key => "user_id"
  has_many :background_pictures , :class_name => "BackgroundPicture", :foreign_key => "user_id"
  has_many :profile_pictures , :class_name => "ProfilePicture", :foreign_key => "user_id"
  has_many :tags , :class_name => "Tag", :foreign_key => "user_id"
  has_many :comments , :class_name => "Comment", :foreign_key => "user_id"
  has_many :favorites , :class_name => "Favorite", :foreign_key => "user_id"


  has_many :follow_request_follower, :class_name => "Follow", :foreign_key => "follower_id"
  has_many :follow_follower, :through => :follow_request_follower, :source => :followee

  has_many :follow_request_followee, :class_name => "Follow", :foreign_key => "followee_id"
  has_many :follow_followee, :through => :follow_request_followee, :source => :follower

  has_many :photostream_pictures, :through => :follow_follower, :source => :pictures
end
