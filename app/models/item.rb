class Item < ApplicationRecord
  include FriendlyId
  friendly_id :random_url

  before_create do
    self.random_url = SecureRandom.hex(10)
  end
end
