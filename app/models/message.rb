class Message < ApplicationRecord
  validates :title, :content, :image, presence: true
end
