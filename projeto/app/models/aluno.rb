class Aluno < ActiveRecord::Base
	
	def nome_completo
		"#{nome} - #{ra}"
	end

end
