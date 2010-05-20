class AddDetalhesToImprensas < ActiveRecord::Migration
  def self.up
	  add_column :imprensas, :nome, :string  
	  add_column :imprensas, :email, :string
	  add_column :imprensas, :telefone, :string
	  add_column :imprensas, :empresa, :string
  end

  def self.down
  end
end
