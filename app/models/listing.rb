class Listing < ApplicationRecord
    mount_uploader :image, ImageUploader
    validate:image
    
  private

    # Validates the size of an uploaded picture.
    def image_size
      if image.size > 5.megabytes
        errors.add(:image, "should be less than 5MB")
      end
    end
end
