class HomeController < ApplicationController
	def index
		@alunos = Aluno.limit(3)
	end

	
end