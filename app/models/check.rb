class Check < ApplicationRecord
    # Checkのデータはユーザーによって所有されている
    belongs_to :user

    # Label, Check, Prefectureにてhas_many throughの関連付けを行う
    has_many :labels, dependent: :destroy
    has_many :prefectures, through: :labels 

    # Checkはprefectureに属する
    # belongs_to :prefecture

    # before_save :prefecture_name_slim

    def prefecture_name_slim
        self.prefecture_name.gsub!(/[\[\]\"]/, "").gsub!(" ", "") if attribute_present?("prefecture_name")
    end
end
