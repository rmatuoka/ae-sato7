class CreateAdmServicos < ActiveRecord::Migration
  def self.up
    create_table :adm_servicos do |t|
      t.string :tx_video

      t.timestamps
    end
  end

  def self.down
    drop_table :adm_servicos
  end
end
