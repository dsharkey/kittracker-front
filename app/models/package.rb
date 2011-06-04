class Package < ActiveRecord::Base
  belongs_to :project
  
  Package::STATUSES = {"In Transit" => 0,"Delivered" => 1,"Delivered -- Damaged" => 2}
end
