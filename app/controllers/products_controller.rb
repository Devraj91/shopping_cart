class ProductsController < ApplicationController

  def index
    @products = Product.all.available_products
    @cart = current_cart
  end

  def create
    Product.create(title: params[:title], description: params[:description], image_url: params[:image_url], price: params[:price])
    flash[:notice] = "Product successfully created"
    redirect_to '/admin/products'
  end
end
