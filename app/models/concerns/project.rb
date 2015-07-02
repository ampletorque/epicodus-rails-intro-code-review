class Project < ActiveRecord::Base
  validates :name, :presence => true
  validates :short_description, :presence => true
  validates :long_description, :presence => true
  validates :category, :presence => true
  validates :coworkers, :presence => true
  validates :code_url, :presence => true
  validates :hosted_url, :presence => true
  validates :project_date, :presence => true
  validates :skill_id, :presence => true
  validates :user_id, :presence => true
end
