require 'rails_helper'

describe List do
  it { should validate_presence_of :name }
  it { should validate_presence_of :image }
  it { should validate_presence_of :description }
  it { should validate_presence_of :githublink }
  it { should validate_presence_of :livelink }   
  it { should have_many :tasks }
end
