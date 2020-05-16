class Image < ApplicationRecord
  ount_uploader :src, ImageUploader
  belongs_to :product
end
