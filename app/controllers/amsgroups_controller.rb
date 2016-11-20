class AmsgroupsController < ApplicationController
	before_action :find_amsgroup, only: [ :show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]


	def index
		@amsgroup = Amsgroup.all.order("created_at DESC")
	end

	def show
		
	end

	def new
		@amsgroup = current_user.amsgroups.build
	end

	def create
		@amsgroup = current_user.amsgroups.build(amsgroup_params)

		if @amsgroup.save
			redirect_to @amsgroup, notice: "wish was succesfully updated!"
		else
			render 'new'
		end
	end

	def edit
		
	end

	def update
		if @amsgroup.update(amsgroup_params)
			redirect_to @amsgroup
		else
			render "edit"
		end
	end

	def destroy
		@amsgroup.destroy
		redirect_to @amsgroup
	end

	private

	def amsgroup_params
		params.require(:amsgroup).permit(:titlerus, :descriptionrus, :imagegroup)
	end

	def find_amsgroup
		@amsgroup = Amsgroup.find(params[:id])
	end
end
