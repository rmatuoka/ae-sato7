class CreateAdmCases < ActiveRecord::Migration
  def self.up
    create_table :adm_cases do |t|
	t.string :titulo
	t.text :case
	t.timestamps
    end
  end

  def self.down
    drop_table :adm_cases
  end
end
