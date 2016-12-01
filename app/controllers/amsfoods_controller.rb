class AmsfoodsController < ApplicationController
	before_action :find_amsfood, only: [ :show, :edit, :update, :destroy]
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
		@amsfood = current_user.amsfoods.build
	end

	def create
		@amsfood = current_user.amsfoods.build(amsfood_params)

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
		params.require(:amsfood).permit(:titlerus, :descriptionrus, :foodcategory_id, :imagefood, :amsfoods_id)
	end

	def find_amsfood
		@amsfood = Amsfood.find(params[:id])
	end

end
