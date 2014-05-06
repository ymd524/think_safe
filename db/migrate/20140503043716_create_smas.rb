class CreateSmas < ActiveRecord::Migration
  def self.up
    create_table :smas do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :smas
  end
end
