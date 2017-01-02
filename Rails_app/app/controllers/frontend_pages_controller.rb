class FrontendPagesController < ApplicationController
  def index
	  @products = Product.all
	  @categorys = Category.all

	  # These two rows are for selecting what products to render
	  # in the product grid.
	  number_of_products = 6
    @products_to_render = @products.limit(number_of_products).order("RANDOM()")
  end

  def product
    @product = Product.find(params[:id])
  end

  def category
    @category = Category.find(params[:id])
  end

  def user
    if logged_in?
      @user = current_user
    else
      redirect_to login_path
    end
  end

  def order
  end

  def customer_cart
  end

  def sing_up
	  @user = Customer.new
  end

  def sign_in
  end
end
