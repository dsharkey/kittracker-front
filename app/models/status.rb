class Status < ActiveRecord::Base
  set_table_name "status"

  belongs_to :package
  belongs_to :person
end
