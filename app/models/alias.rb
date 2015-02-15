class Alias < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :large => '400x400!', :medium => "200x200!", :thumb => "100x100!" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  has_one :user , :foreign_key => :user_id

end
