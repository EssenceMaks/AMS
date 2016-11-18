class AmsgrouppicturesController < ApplicationController
	before_action :find_amsgrouppicture, only: [ :show, :edit, :update, :destroy]


	def index
		@amsgrouppicture = Amsgrouppicture.all.order("created_at DESC")
	end

	def show
		
	end

	def new
		@amsgrouppicture = Amsgrouppicture.new
	end

	def create
		@amsgrouppicture = Amsgrouppicture.new(amsgrouppicture_params)

		if @amsgrouppicture.save
			redirect_to @amsgrouppicture, notice: "wish was succesfully updated!"
		else
			render 'new'
		end
	end

	def edit
		
	end

	def update
		if @amsgrouppicture.update(amsgrouppicture_params)
			redirect_to @amsgrouppicture
		else
			render "edit"
		end
	end

	def destroy
		@amsgrouppicture.destroy
		redirect_to @amsgrouppicture
	end

	private

	def amsgrouppicture_params
		params.require(:amsgrouppicture).permit(:titlerus, :titleeng, :titlear, :descriptionrus, :descriptioneng, :descriptionar, :category)
	end

	def find_amsgrouppicture
		@amsgrouppicture = Amsgrouppicture.find(params[:id])
	end
end
