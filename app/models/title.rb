class Title < ActiveRecord::Base
  has_attached_file :icon, :styles => { :large => '200x200!', :medium => "100x100!", :thumb => "50x50!" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :icon, :content_type => /\Aimage\/.*\Z/

  has_many :user_titles
  has_many :users , :through => :user_titles

end
