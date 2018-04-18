class List < ActiveRecord::Base
  has_many :tasks
  validates :name, :presence => true
  validates :image, :presence => true
  validates :description, :presence => true
  validates :githublink, :presence => true
  validates :livelink, :presence => true    
end
