class CreateLanes < ActiveRecord::Migration
  def self.up
    create_table :lanes do |t|
      t.integer :center_id
      t.boolean :avail

      t.timestamps
    end
  end

  def self.down
    drop_table :lanes
  end
end
