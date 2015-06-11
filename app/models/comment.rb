class Comment < ActiveRecord::Base
  belongs_to :user , :class_name => "User", :foreign_key => "user_id"
  belongs_to :picture , :class_name => "Picture", :foreign_key => "picture_id"
end
