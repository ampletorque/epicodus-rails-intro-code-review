require 'rails_helper'

describe "the edit a project process" do
  it "edits a project" do
    user = User.create(:name => 'John')
    project = Project.create(:user_id => user.id, :name => 'make portfolio', :short_description => 'hi', :long_description => 'hi', :category => 'hi', :coworkers => 'hi', :code_url => 'hi', :hosted_url => 'hi', :project_date => '1/1/2015')
    visit user_project_path(user, project)
    click_on 'Edit'
    fill_in 'Name', :with => 'edit portfolio'
    click_on 'Update Project'
    expect(page).to have_content 'updated'
  end

  it "gives error when no description is entered" do
    user = User.create(:name => 'John')
    project = Project.create(:name => 'make portfolio', :user_id => user.id)
    visit user_project_path(user, project)
    click_on 'Edit'
    fill_in 'Name', :with => ''
    click_on 'Update Project'
    expect(page).to have_content 'errors'
  end
end




class Project < ActiveRecord::Base
  validates :name, :presence => true
  validates :short_description, :presence => true
  validates :long_description, :presence => true
  validates :category, :presence => true
  validates :coworkers, :presence => true
  validates :code_url, :presence => true
  validates :hosted_url, :presence => true
  validates :project_date, :presence => true
  belongs_to :user
  has_and_belongs_to_many :skills
end
