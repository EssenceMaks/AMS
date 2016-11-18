class AmsgroupsController < ApplicationController
	before_action :find_amsgroup, only: [ :show, :edit, :update, :destroy]


	def index
		@amsgroup = Amsgroup.all.order("created_at DESC")
	end

	def show
		
	end

	def new
		@amsgroup = Amsgroup.new
	end

	def create
		@amsgroup = Amsgroup.new(amsgroup_params)

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
		params.require(:amsgroup).permit(:titlerus, :titleeng, :titlear, :descriptionrus, :descriptioneng, :descriptionar, :category)
	end

	def find_amsgroup
		@amsgroup = Amsgroup.find(params[:id])
	end
end
