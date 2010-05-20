class Contato < ActiveRecord::Base
	validates_presence_of :nome
	validates_presence_of :telefone
	validates_presence_of :email
	validates_presence_of :empresa
	validates_presence_of :mensagem
end
