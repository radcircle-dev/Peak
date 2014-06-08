class UsersController < ApplicationController
	before_filter :authenticate_user!
	def index

	end


	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])

  	if @user.update(user_params)
  		redirect_to @user
  	else
  		render 'edit'
  	end
	end

	def show
		@user = User.find(params[:id])
	end

	private
	def user_params
  		params.require(:user).permit(:prname)
  	end

end
