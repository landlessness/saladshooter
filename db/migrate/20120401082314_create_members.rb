class CreateMembers < ActiveRecord::Migration
  def self.up
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :status
      t.string :photo_file_name
      t.string :photo_content_type
      t.string :photo_file_size
      t.string :photo_updated_at
      t.timestamps
    end
  end

  def self.down
    drop_table :members
  end
end
