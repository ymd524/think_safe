class CreateRses < ActiveRecord::Migration
  def self.up
    create_table :rses do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :rses
  end
end
