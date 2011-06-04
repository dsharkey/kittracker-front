class Status < ActiveRecord::Base
  set_table_name :status
  
  belongs_to :person
  belongs_to :package
end
