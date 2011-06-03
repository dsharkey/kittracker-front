class CreatePostings < ActiveRecord::Migration
  def self.up
    create_table :postings do |t|
      t.integer :person_id
      t.integer :project_id
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end

  def self.down
    drop_table :postings
  end
end
