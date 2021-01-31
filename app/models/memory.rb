class Memory < ApplicationRecord
    # belongs_to :, class_name: "", foreign_key: "_id"
    belongs_to :user
    belongs_to :prefecture

    mount_uploader :img, ImgUploader
end
