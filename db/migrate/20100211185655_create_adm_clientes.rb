class CreateAdmClientes < ActiveRecord::Migration
  def self.up
    create_table :adm_clientes do |t|
	t.string :titulo
      t.timestamps
    end
  end

  def self.down
    drop_table :adm_clientes
  end
end
