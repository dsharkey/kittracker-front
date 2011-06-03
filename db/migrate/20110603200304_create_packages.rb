class CreatePackages < ActiveRecord::Migration
  def self.up
    create_table :packages do |t|
      t.float :source_lat
      t.float :source_lng
      t.float :dest_lat
      t.float :dest_lng
      t.datetime :sent_date
      t.datetime :exp_delivery

      t.timestamps
    end
  end

  def self.down
    drop_table :packages
  end
end
