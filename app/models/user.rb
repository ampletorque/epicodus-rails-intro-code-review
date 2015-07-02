class User < ActiveRecord::Base
  validates :name, :presence => true
  validates :short_description, :presence => true
  validates :long_description, :presence => true
  validates :title, :presence => true
  validates :app_role, :presence => true
  validates :phone, :presence => true
  validates :email, :presence => true
  validates :code_url, :presence => true
  validates :hosted_url, :presence => true
  has_many :skills
  has_many :projects
end
