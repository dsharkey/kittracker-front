class Package < ActiveRecord::Base
  belongs_to :project
  has_many :statuses
  
  Package::STATUSES = {"In Transit" => 0,"Delivered" => 1,"Delivered -- Damaged" => 2}
  
  def last_status
    Status.find(:order => "created_at desc",:limit => 1)
  end
end
