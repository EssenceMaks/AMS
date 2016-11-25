class AmsstonesController < ApplicationController
	before_action :find_amsstone, only: [ :show, :edit, :update, :destroy]
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
	end

	def show
		
	end

	def new
		@amsstone = current_user.amsstones.build
	end

	def create
		@amsstone = current_user.amsstones.build(amsstone_params)

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
		redirect_to @amsstone
	end

	private

	def amsstone_params
		params.require(:amsstone).permit(:titlerus, :number, :descriptionrus, :category_id, :imagestone)
	end

	def find_amsstone
		@amsstone = Amsstone.find(params[:id])
	end
	
end
