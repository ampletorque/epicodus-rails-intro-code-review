require 'rails_helper'

describe Skill do
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
  it { should validate_presence_of :category }
  it { should validate_presence_of :project_id }
  it { should validate_presence_of :user_id }
  it { should belong_to :user }
  it { should belong_to :project }
  it { should have_many :projects }

end
