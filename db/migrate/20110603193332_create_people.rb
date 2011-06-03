class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :phone_number
      t.string :employee_id
      t.integer :organization_id
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
