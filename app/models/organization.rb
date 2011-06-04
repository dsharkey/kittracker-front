class Organization < ActiveRecord::Base
  has_many :projects
  has_many :people
  has_many :packages
end
