class AmsstonesController < ApplicationController
	before_action :find_amsstone, only: [ :show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]

	def index
		#@amsgroup = Amsgroup.all.order("created_at DESC")
			#@amsgrouppicture = Amsgrouppicture.all.order("created_at DESC")
		#@amsstone = Amsstone.all.order("created_at DESC")
			@amsstonepicture = Amsstonepicture.all.order("created_at DESC")
		#@amsfood = Amsfood.all.order("created_at DESC")
			#@amsfoodpicture = Amsfoodpicture.all.order("created_at DESC")
		#@category = Category.all.order("created_at DESC")
		    #@stone = Amsstone.all.each_with_index do |sto , d|
		    #end

		#if params[:category].blank?
			@amsgroup = Amsgroup.all.order("created_at DESC")
		#	@amsstone = Amsstone.all.order("created_at DESC")
		#	@amsfood = Amsfood.all.order("created_at DESC")
		#	@category = Category.all.order("created_at DESC")
		#else		
		#	@category_id = Category.find_by(categoryname: params[:category]).id
		#	@amsgroup = Amsgroup.where(category_id: @category_id).order("created_at DESC")
		#	@amsstone = Amsstone.where(category_id: @category_id).order("created_at DESC")
		#	@amsfood = Amsfood.where(category_id: @category_id).order("created_at DESC")
		#end

		if params[:stonecategory].blank?
			@amsstone = Amsstone.all.order("created_at DESC")
		else
			#@stonecategory_id = Stonecategory.find_by(categoryname: params[:stonecategory]).id
			@amsstone = Amsstone.where(stonecategory_id: @stonecategory_id).order("created_at DESC")
			#@resumes = Resume.where(soul_id: @soul).order("created_at DESC")
		end

		#if params[:category].blank?
		#	@amsgroup = Amsgroup.all.order("created_at DESC")
		#	@amsstone = Amsstone.all.order("created_at DESC")
		#	@amsfood = Amsfood.all.order("created_at DESC")
		#	@category = Category.all.order("created_at DESC")
		#else
		#	@category_id = Category.find_by(categoryname: params[:category]).id
		#	@amsgroup = Amsgroup.where(category_id: @category_id).order("created_at DESC")
		#	@amsstone = Amsstone.where(category_id: @category_id).order("created_at DESC")
		#	@amsfood = Amsfood.where(category_id: @category_id).order("created_at DESC")
		#end
#
#		if params[:foodcategory].blank?
#			@foodcategory = Foodcategory.all.order("created_at DESC")
#		else
#			@foodcategory_id = Foodcategory.find_by(categoryname: params[:foodcategory]).id
#			@foodcategory = Foodcategory.where(category_id: @category_id).order("created_at DESC")
#		end
#
#		if params[:groupcategory].blank?
#			@groupcategory = Groupcategory.all.order("created_at DESC")
#		else
#			@groupcategory_id = Groupcategory.find_by(categoryname: params[:groupcategory]).id
#			@groupcategory = Groupcategory.where(category_id: @category_id).order("created_at DESC")
#		end
	end

	def show
		@stonecategory = Stonecategory.find(params[:id])
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
		params.require(:amsstone).permit(:titlerus, :number, :descriptionrus, :stonecategory_id, :imagestone, :amsstones_id)
	end

	def find_amsstone
		@amsstone = Amsstone.find(params[:id])
	end
	
end
