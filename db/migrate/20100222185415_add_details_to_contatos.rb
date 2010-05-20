class AddDetailsToContatos < ActiveRecord::Migration
  def self.up
	  add_column :contatos, :nome, :string  
	  add_column :contatos, :email, :string
	  add_column :contatos, :telefone, :string
	  add_column :contatos, :empresa, :string
	  add_column :contatos, :mensagem, :text
  end

  def self.down
  end
end
