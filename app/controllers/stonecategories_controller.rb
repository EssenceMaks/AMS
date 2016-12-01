class StonecategoriesController < ApplicationController

	before_action :find_stonecategory, only: [ :show, :edit, :update, :destroy]
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
			@stonecategory = Stonecategory.all.order("created_at DESC")
			@foodcategory = Foodcategory.all.order("created_at DESC")
			@groupcategory = Groupcategory.all.order("created_at DESC")
		else
			@stonecategory_id = Stonecategory.find_by(categoryname: params[:stonecategory]).id
			@foodcategory_id = Foodcategory.find_by(categoryname: params[:foodcategory]).id
			@groupcategory_id = Groupcategory.find_by(categoryname: params[:groupcategory]).id
			@category_id = Category.find_by(categoryname: params[:category]).id
			@amsgroup = Amsgroup.where(category_id: @category_id).order("created_at DESC")
			@amsstone = Amsstone.where(category_id: @category_id).order("created_at DESC")
			@amsfood = Amsfood.where(category_id: @category_id).order("created_at DESC")
		end

	end

	def show
		
	end

	def new
		@stonecategory = current_user.stonecategories.build
	end

	def create
		@stonecategory = current_user.stonecategories.build(stonecategory_params)

		if @stonecategory.save
			redirect_to @stonecategory, notice: "wish was succesfully updated!"
		else
			render 'new'
		end
	end

	def edit
		
	end

	def update
		if @stonecategory.update(stonecategory_params)
			redirect_to @stonecategory
		else
			render "edit"
		end
	end

	def destroy
		@stonecategory.destroy
		redirect_to @stonecategory
	end

	private

	def stonecategory_params
		params.require(:stonecategory).permit(:categoryname)
	end

	def find_stonecategory
		@stonecategory = Stonecategory.find(params[:id])
	end

end
