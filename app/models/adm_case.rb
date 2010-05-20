class AdmCase < ActiveRecord::Base
	validates_presence_of :titulo
	validates_presence_of :case
	
	has_attached_file :fotocase, :styles => { :thumb => "123x123>", :medio => "516x356>" },
				:url => "/uploads/:attachment/:id/:basename_:style.:extension",
				:path => ":rails_root/public/uploads/:attachment/:id/:basename_:style.:extension"
end
