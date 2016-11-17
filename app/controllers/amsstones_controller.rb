class AmsstonesController < ApplicationController
	before_action :find_amsstone, only: [ :show, :edit, :update, :destroy]


	def index
		@amsstone = Amsstone.all.order("created_at DESC")
	end

	def show
		
	end

	def new
		@amsstone = Amsstone.new
	end

	def create
		@amsstone = Amsstone.new(amsstone_params)

		if @amsstone.save
			redirect_to @amsstone, notice: "wish was succesfully updated!"
		else
			render 'new'
		end
	end

	def edit
		
	end

	def update
		if @amsstone.update(amsstone_params)
			redirect_to @amsstone
		else
			render "edit"
		end
	end

	def destroy
		@amsstone.destroy
		redirect_to root_path
	end

	private

	def amsstone_params
		params.require(:amsstone).permit(:titlerus, :titleeng, :titlear, :descriptionrus, :descriptioneng, :descriptionar, :category)
	end

	def find_amsstone
		@amsstone = Amsstone.find(params[:id])
	end
	
end
