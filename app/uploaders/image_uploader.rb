class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick

  process :resize_to_limit => [640, 640]
  process :convert => 'jpg'

  def extension_white_list
    %w(jpg jpeg png)
  end

  storage :file
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end
