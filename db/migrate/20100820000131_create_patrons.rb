class CreatePatrons < ActiveRecord::Migration
  def self.up
    create_table :patrons do |t|
      t.integer :cc

      t.timestamps
    end
  end

  def self.down
    drop_table :patrons
  end
end
