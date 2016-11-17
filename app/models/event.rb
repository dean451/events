class Event < ApplicationRecord

  validates :name, :description, :location, presence: true

  validates :description, length: {minimum: 25}

  validates :price, numericality: { greater_than_or_equal_to: 0 }

  validates :capacity, numericality: { only_integer: true, greater_than: 0 }

  validates :image_file_name, allow_blank: true, format: {
    with: /\w+\.(gif|jpg|png)\z/i,
    message: "must reference a gif, jpg, or png image"
  }



  def free?
    price == 0 || price == nil
  end

  def self.upcoming
    where("starts_at >= ?", Time.now).order("starts_at")
  end

end
