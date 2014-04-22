class StaticFilterProductsController < ApplicationController
  def index
    #@items = Product.where("created_at>ADDTIME(NOW(), '0 0:30:0')").to_a
    #render (DateTime.now - 10.minutes)
    @items = Product.where("updated_at > ?",  DateTime.now - 10.minutes)
              .page(params[:page]).per(5) #paginate
  end
end
