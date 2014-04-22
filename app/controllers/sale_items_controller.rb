class SaleItemsController < ApplicationController

	def index
		#GET '/sale_items'
		@sale_items = SaleItem.all
	end

	def new
		#GET '/sale_items/new'
		@new_item = SaleItem.new
	end

	def create
		#POST '/sale_items'
		@new_item = SaleItem.new(sale_item_params)

		if @new_item.save
			redirect_to sale_items_path
		end
	end

	def edit
		#GET '/sale_items/:id/edit'
		@updated_item = SaleItem.find(params[:id])
	end

	def update
		#P '/sale_items/:id
		@updated_item = SaleItem.find(params[:id])

		if @updated_item.update_attributes(sale_item_params)
			redirect_to '/sale_items'
		end
	end

	def show
		@purchased_item = SaleItem.find(params[:id])
	end

	def select_deleted_item
		#GET '/sale_items/:id'
		@deleted_item = SaleItem.find(params[:id])
		@purchased_item = SaleItem.find(params[:id])
	end

	def destroy
		#DELETE 'sale_items'
		@deleted_item = SaleItem.find(params[:id])
		@purchased_item = SaleItem.find(params[:id])

		if @deleted_item.destroy
			redirect_to sale_items_path
		end

	end

	private

	def sale_item_params
		params.require(:sale_item).permit!
	end
end

