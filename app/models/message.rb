class Message < ApplicationRecord
 belongs_to :user
 belongs_to :room

validates :content, presense: true, unless: :was_attached?

def was_attached?
  self.image.attached?
end

end
