class Noticia < ActiveRecord::Base
	acts_as_taggable_on :tags
	
	validates_presence_of :titulo
	validates_presence_of :descricao
	validates_presence_of :corpo
	
	has_attached_file :foto, :styles => { :thumb => "123x123>", :medio => "450x450>" },
				:url => "/uploads/:attachment/:id/:basename_:style.:extension",
				:path => ":rails_root/public/uploads/:attachment/:id/:basename_:style.:extension"
end
