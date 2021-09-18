class SiteController < ApplicationController
  def index
    @products = Product.all
  end

  def contact
  end

  def product
    @product = Product.find_by(id:params[:id])
  end
end
