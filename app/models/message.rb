class Message < ApplicationRecord
  validates :title, :content, presence: true
end
