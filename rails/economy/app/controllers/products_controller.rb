class ProductsController < ApplicationController
  def index
  end

  def new
    @product = Product.new
    @supplier = @product.suppliers.build()
  end

  def create
    @product = Product.new(product_params)
    @supplier = @product.suppliers.build(supplier_params)

    # binding.pry

    if @product.save && @supplier.save
      flash[:notification] = "You created them both."
    else
      flash[:notification] = "You didnt save them."
    end

    redirect_to new_product_path
  end

  private

    def product_params
      params.require(:product).permit(:in_store, :name, :name_confirmation, :price, :terms_of_service)
    end

    def supplier_params
      params.require(:product).require(:supplier).permit(:name, :country)
    end
end
