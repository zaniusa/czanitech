class UsersController < ApplicationController

	before_filter :authenticate_user!
	before_action :check_adm
	before_action :set_user, only: [:show, :edit, :update, :destroy]

	def index
		@users = User.all
	end

	def show
	end

	def edit
	end

	def edit_admin_status
		@user = User.find(params[:id])
		@house.update_attribute(:admin, true)
	end

	def create
		@user = User.new(user_params)

		respond_to do |format|
		  if @user.save
		    format.html { redirect_to @user, notice: 'User was successfully created.' }
		    format.json { render action: 'show', status: :created, location: @user }
		  else
		    format.html { render action: 'new' }
		    format.json { render json: @user.errors, status: :unprocessable_entity }
		  end
		end
	end

	def update
		respond_to do |format|
		  if @user.update(user_params)
		    format.html { redirect_to '/allusers', notice: 'User was successfully updated.' }
		    format.json { head :no_content }
		  else
		    format.html { render action: 'edit' }
		    format.json { render json: @user.errors, status: :unprocessable_entity }
		  end
		end
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_user
	  @user = User.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def user_params
	  params.require(:user).permit(:admin, :company, :first_name, :last_name, :email)
	end

end