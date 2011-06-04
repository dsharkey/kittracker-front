class AddToPackage < ActiveRecord::Migration
  def self.up
    add_column :packages, :identity, :string
    add_column :packages, :project_id, :integer
  end

  def self.down
    remove_column :packages, :identity
    remove_column :packages, :project_id
  end
end
