class Pic < ApplicationRecord
    mount_uploader :img, ImageUploader
end
