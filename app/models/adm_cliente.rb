class AdmCliente < ActiveRecord::Base
	validates_presence_of :titulo
	validates_presence_of :logo
	
	has_attached_file :logo, :styles => { :thumb => "117x123>", :medio => "450x450>" },
				:url => "/uploads/:attachment/:id/:basename_:style.:extension",
				:path => ":rails_root/public/uploads/:attachment/:id/:basename_:style.:extension"
end
