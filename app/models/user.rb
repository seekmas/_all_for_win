# encoding: utf-8
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable ,
         :omniauthable, :omniauth_providers => [:wechat]

  devise_for :users, :controllers => { :omniauth_callbacks => "auth/wechat/callback" }

  belongs_to :alias

  has_many :user_titles
  has_many :titles , :through => :user_titles

  has_many :comments
  has_many :covers

  has_many :statuses
end
