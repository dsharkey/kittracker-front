class RenameIdentity < ActiveRecord::Migration
  def self.up
    rename_column :packages, :identity, :identifier
  end

  def self.down
    rename_column :packages, :identifier, :identity
  end
end
