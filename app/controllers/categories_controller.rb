class CategoriesController < ApplicationController
	before_action :find_category, only: [ :show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]

	def index
		@category = Category.all.order("created_at DESC")
	end

	def show
		
	end

	def new
		@category = current_user.categories.build
	end

	def create
		@category = current_user.categories.build(category_params)

		if @category.save
			redirect_to @category, notice: "wish was succesfully updated!"
		else
			render 'new'
		end
	end

	def edit
		
	end

	def update
		if @category.update(category_params)
			redirect_to @category
		else
			render "edit"
		end
	end

	def destroy
		@category.destroy
		redirect_to @category
	end

	private

	def category_params
		params.require(:category).permit(:categoryname)
	end

	def find_category
		@category = Category.find(params[:id])
	end
	
end
