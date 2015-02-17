# encoding: utf-8
class UserTitle < ActiveRecord::Base

  belongs_to :user
  belongs_to :title

end
