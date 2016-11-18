class AmsfoodsController < ApplicationController
	before_action :find_amsfood, only: [ :show, :edit, :update, :destroy]


	def index
		@amsfood = Amsfood.all.order("created_at DESC")
	end

	def show
		
	end

	def new
		@amsfood = Amsfood.new
	end

	def create
		@amsfood = Amsfood.new(amsfood_params)

		if @amsfood.save
			redirect_to @amsfood, notice: "wish was succesfully updated!"
		else
			render 'new'
		end
	end

	def edit
		
	end

	def update
		if @amsfood.update(amsfood_params)
			redirect_to @amsfood
		else
			render "edit"
		end
	end

	def destroy
		@amsfood.destroy
		redirect_to @amsfood
	end

	private

	def amsfood_params
		params.require(:amsfood).permit(:titlerus, :titleeng, :titlear, :descriptionrus, :descriptioneng, :descriptionar, :imagefood)
	end

	def find_amsfood
		@amsfood = Amsfood.find(params[:id])
	end

end
