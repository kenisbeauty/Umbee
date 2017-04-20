class Listing < ApplicationRecord
    mount_uploader :image, ImageUploader
   validates :name, :address, :description, :availability_from, :home_type, :room_type, :maximum_guest, :availability_to, :amenites, presence: true
   validates :price, numericality: { greater_than: 0}
  
  private

    # Validates the size of an uploaded picture.
    def image_size
      if image.size > 5.megabytes
        errors.add(:image, "should be less than 5MB")
      end
    end
end
