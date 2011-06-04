class RenameExpDelivery < ActiveRecord::Migration
  def self.up
    rename_column :packages, :exp_delivery, :exp_delivery_date
  end

  def self.down
    rename_column :packages, :exp_delivery_date, :exp_delivery
  end
end
