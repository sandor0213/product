class ProductsController < ApplicationController

	def index
	end

	def new 
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)
		if  @product.save
			redirect_to root_path
		end
	end


private
def product_params
	params.require(:product).permit(:shopname, :title, :description)
	end

end
