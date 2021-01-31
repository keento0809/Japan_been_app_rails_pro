class Prefecture < ApplicationRecord
    # belongs_to :user, optional: true
    # Prefectureは複数のmemoriesを所有する
    has_many :memories
    has_many :users, through: :memories, dependent: :destroy

    # Label, Check, Prefectureにてhas_many throughの関連付けを行う
    has_many :labels, dependent: :destroy
    has_many :checks, through: :labels

    # Prefectureはcheckを所有する
    # has_many :checks

    mount_uploader :img, ImgUploader
end
