class CreateCheckins < ActiveRecord::Migration
  def self.up
    create_table :checkins do |t|
      t.references :member
      t.references :checkinable
      t.timestamps
    end
  end

  def self.down
    drop_table :checkins
  end
end
