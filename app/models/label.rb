class Label < ApplicationRecord
    # Label, Check, Prefectureにてhas_many throughの関連付けを行う
    belongs_to :check
    belongs_to :prefecture
end
