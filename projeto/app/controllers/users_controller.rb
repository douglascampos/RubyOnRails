class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def index
		render :new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to @user, :notice => 'Cadastro criado com sucesso!'
		else 
			render :new
		end

	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(user_params)
			redirect_to @user, :notice => 'Dados Atualizados com sucesso'
		else
			render :update
		end
	end	


	def user_params
		params.require(:user).permit(:nome, :email, :password, :password_confirmation)
	end

	def delete

	end
end