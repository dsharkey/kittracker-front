class Organization < ActiveRecord::Base
  has_many :projects
  has_many :people
end
