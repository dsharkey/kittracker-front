class Person < ActiveRecord::Base
  belongs_to :organization
  has_many :postings
end
