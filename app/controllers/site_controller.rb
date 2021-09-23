class SiteController < ApplicationController
  def index
    ActionController::Parameters.permit_all_parameters = true
    @q = Product.ransack(params[:q])
    @products = @q.result(distinct: true)
    # binding.pry
  end

  def contact
  end

  def product
    @product = Product.find_by(id:params[:id])
  end
end
