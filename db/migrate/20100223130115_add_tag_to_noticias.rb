class AddTagToNoticias < ActiveRecord::Migration
  def self.up
    add_column :noticias, :taglist, :string
  end

  def self.down
    remove_column :noticias, :taglist
  end
end
