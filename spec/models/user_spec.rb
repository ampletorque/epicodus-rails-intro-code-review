require 'rails_helper'

describe User do
  it { should validate_presence_of :name }
  it { should validate_presence_of :short_description }
  it { should validate_presence_of :long_description }
  it { should validate_presence_of :title }
  it { should validate_presence_of :app_role }
  it { should validate_presence_of :phone }
  it { should validate_presence_of :email }
  it { should validate_presence_of :code_url }
  it { should validate_presence_of :hosted_url }
  it { should have_many :skills }
  it { should have_many :projects }
end
