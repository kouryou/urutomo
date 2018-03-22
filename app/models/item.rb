class Item < ApplicationRecord
  has_many :item_images
  accepts_nested_attributes_for :item_images,
                                reject_if: proc { |attributes| attributes['image'].blank? }

  include FriendlyId
  friendly_id :random_url

  before_create do
    self.random_url = SecureRandom.hex(10)
  end
end
