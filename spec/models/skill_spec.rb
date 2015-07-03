require 'rails_helper'

describe Skill do
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
  it { should validate_presence_of :category }
  it { should belong_to :user }
  it { should have_and_belong_to_many :projects }

end
