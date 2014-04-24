class ProductController < ApplicationController
  def product
    @product = Product.where("id='#{params[:id]}'").first;
    product_image = @product.product_images.first
    if product_image
      @image_url = product_image.avatar
    end
    
  end
end
