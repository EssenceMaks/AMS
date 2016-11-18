class AmsstonepicturesController < ApplicationController
	before_action :find_amsstonepicture, only: [ :show, :edit, :update, :destroy]


	def index
		@amsstonepicture = Amsstonepicture.all.order("created_at DESC")
	end

	def show
		
	end

	def new
		@amsstonepicture = Amsstonepicture.new
	end

	def create
		@amsstonepicture = Amsstonepicture.new(amsstonepicture_params)

		if @amsstonepicture.save
			redirect_to @amsstonepicture, notice: "wish was succesfully updated!"
		else
			render 'new'
		end
	end

	def edit
		
	end

	def update
		if @amsstonepicture.update(amsstonepicture_params)
			redirect_to @amsstonepicture
		else
			render "edit"
		end
	end

	def destroy
		@amsstonepicture.destroy
		redirect_to @amsstonepicture
	end

	private

	def amsstonepicture_params
		params.require(:amsstonepicture).permit(:titlerus, :titleeng, :titlear, :descriptionrus, :descriptioneng, :descriptionar, :category)
	end

	def find_amsstonepicture
		@amsstonepicture = Amsstonepicture.find(params[:id])
	end
end
