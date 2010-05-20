class AddAttachmentsLogoToAdmCliente < ActiveRecord::Migration
  def self.up

    add_column :adm_clientes, :logo_file_name, :string
    add_column :adm_clientes, :logo_content_type, :string
    add_column :adm_clientes, :logo_file_size, :integer
    add_column :adm_clientes, :logo_updated_at, :datetime

  end

  def self.down

    remove_column :adm_clientes, :logo_file_name
    remove_column :adm_clientes, :logo_content_type
    remove_column :adm_clientes, :logo_file_size
    remove_column :adm_clientes, :logo_updated_at

  end
end
