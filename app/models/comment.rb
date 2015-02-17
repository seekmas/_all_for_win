class Comment < ActiveRecord::Base
  belongs_to :alias , :foreign_key => :alias_id
  belongs_to :user , :foreign_key => :user_id
end
