class ProductImage < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  belongs_to :product
end
