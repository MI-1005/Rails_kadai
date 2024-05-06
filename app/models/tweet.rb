class Tweet < ApplicationRecord
    validates :content, presence: { message: "空欄があります" }
    validates :content, length: { minimum: 1, maximum: 140, message: "は1文字以上140文字以下で入力してください" }, if: -> { content.present? }

end
