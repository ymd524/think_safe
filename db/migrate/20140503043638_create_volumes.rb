class CreateVolumes < ActiveRecord::Migration
  def self.up
    create_table :volumes do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :volumes
  end
end
