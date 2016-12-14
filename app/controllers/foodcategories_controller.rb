class FoodcategoriesController < ApplicationController
	before_action :find_foodcategory, only: [ :show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]

	def index
		#@amsgroup = Amsgroup.all.order("created_at DESC")
			@amsgrouppicture = Amsgrouppicture.all.order("created_at DESC")
		#@amsstone = Amsstone.all.order("created_at DESC")
			@amsstonepicture = Amsstonepicture.all.order("created_at DESC")
		#@amsfood = Amsfood.all.order("created_at DESC")
			@amsfoodpicture = Amsfoodpicture.all.order("created_at DESC")
		#@category = Category.all.order("created_at DESC")

		if params[:category].blank?
			@amsgroup = Amsgroup.all.order("created_at DESC")
			@amsstone = Amsstone.all.order("created_at DESC")
			@amsfood = Amsfood.all.order("created_at DESC")
			@category = Category.all.order("created_at DESC")
		else		
			@category_id = Category.find_by(categoryname: params[:category]).id
			@amsgroup = Amsgroup.where(category_id: @category_id).order("created_at DESC")
			@amsstone = Amsstone.where(category_id: @category_id).order("created_at DESC")
			@amsfood = Amsfood.where(category_id: @category_id).order("created_at DESC")
		end

		if params[:foodcategory].blank?
			@foodcategory = Foodcategory.all.order("created_at DESC")
		else
			@foodcategory_id = Foodcategory.find_by(categoryname: params[:foodcategory]).id
			@foodcategory = Foodcategory.where(category_id: @category_id).order("created_at DESC")
		end

	end

	def show
		
	end

	def new
		@foodcategory = current_user.foodcategories.build
	end

	def create
		@foodcategory = current_user.foodcategories.build(foodcategory_params)

		if @foodcategory.save
			redirect_to @foodcategory, notice: "wish was succesfully updated!"
		else
			render 'new'
		end
	end

	def edit
		
	end

	def update
		if @foodcategory.update(foodcategory_params)
			redirect_to @foodcategory
		else
			render "edit"
		end
	end

	def destroy
		@foodcategory.destroy
		redirect_to @foodcategory
	end

	private

	def foodcategory_params
		params.require(:foodcategory).permit(:categoryname)
	end

	def find_foodcategory
		@foodcategory = Foodcategory.find(params[:id])
	end
	
end
