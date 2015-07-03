require 'rails_helper'

describe Project do
  it { should validate_presence_of :name }
  it { should validate_presence_of :short_description }
  it { should validate_presence_of :long_description }
  it { should validate_presence_of :category }
  it { should validate_presence_of :coworkers }
  it { should validate_presence_of :code_url }
  it { should validate_presence_of :hosted_url }
  it { should validate_presence_of :project_date }
  it { should belong_to :user }
  it { should have_and_belong_to_many :skills }

end
