class CreateImprensas < ActiveRecord::Migration
  def self.up
    create_table :imprensas do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :imprensas
  end
end
