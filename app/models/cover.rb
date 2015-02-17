# encoding: utf-8
class Cover < ActiveRecord::Base
  has_attached_file :cover, :styles => { :large => '400x400!', :medium => "200x200!", :thumb => "100x100!" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/

  belongs_to :alias
end
