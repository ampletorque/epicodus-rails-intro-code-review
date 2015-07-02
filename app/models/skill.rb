class Skill < ActiveRecord::Base
  validates :name, :presence => true
  validates :description, :presence => true
  validates :category, :presence => true
  belongs_to :user
  has_and_belongs_to_many :projects
end
