class Project < ActiveRecord::Base
  belongs_to :organization
  has_many :postings
  has_many :packages
end
