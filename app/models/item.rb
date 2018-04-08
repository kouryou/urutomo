class Item < ApplicationRecord
  has_many :item_images
  accepts_nested_attributes_for :item_images,
                                reject_if: proc { |attributes| attributes['image'].blank? }

  validates :random_url, uniqueness: true
  validate :number_of_item_images

  include FriendlyId
  friendly_id :random_url

  enum item_condition: { very_good: 0, good: 1, almost_good: 2, almost_bad: 3, bad: 4, very_bad: 5 }

  def number_of_item_images
    errors.add(:item_images, "image count is invalid!") if item_images.size == 0 || item_images.size > 4
  end

  before_create do
    self.random_url = SecureRandom.hex(10)
  end
end
