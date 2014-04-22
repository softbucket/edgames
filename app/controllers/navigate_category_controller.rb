class NavigateCategoryController < ApplicationController
  def index
    @show_category = false
    @show_products = false
    
    if params[:query].nil? || params[:query] == "" then
      @show_category = true
      @categories = ProductCategory.all.to_a
    else
      @show_products = true
      #render ProductCategory.where("name='#{params[:query]}'").first.methods.inspect
      @items = ProductCategory.where("name='#{params[:query]}'").first.products.to_a
      #render @items.inspect
    end
    
  end
end
