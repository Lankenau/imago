class Picture < ActiveRecord::Base
  validates :image, :presence => true
  validates :name, :presence => true


  has_many :likes , :class_name => "Like", :foreign_key => "picture_id"
  has_many :favorites , :class_name => "Favorite", :foreign_key => "picture_id"
  has_many :comments , :class_name => "Comment", :foreign_key => "picture_id"
  has_many :tags , :class_name => "Tag", :foreign_key => "picture_id"
  belongs_to :user
  belongs_to :tag , :class_name => "Tag", :foreign_key => "tag_id"
  has_many :user, :through => :tags
  has_many :user, :through => :favorites
  has_many :user, :through => :comments
  has_many :user, :through => :likes
  mount_uploader :image, ImageUploader

end
