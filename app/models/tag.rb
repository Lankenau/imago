class Tag < ActiveRecord::Base
  has_many :pictures , :class_name => "Picture", :foreign_key => "tag_id"
  belongs_to :user , :class_name => "User", :foreign_key => "user_id"
  belongs_to :picture , :class_name => "Picture", :foreign_key => "picture_id"
  has_many :user, :through => :pictures
end
