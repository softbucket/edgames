class SearchController < ApplicationController
  def search
    @search_term = params[:search_term].nil? ? "" : params[:search_term]
    @category_name = params[:category].nil? ? "" : params[:category]
    
    if @category_name == ""
      @product = Product
    else
      @product = ProductCategory.where("name='#{@category_name}'").first.products.order('created_at DESC')
    end
    
    
    if @search_term == ""
      @searches=[]
    else
      @searches = @product.where("name LIKE '%#{@search_term}%'").to_a
    end
    
    @items = @searches
  end
end
