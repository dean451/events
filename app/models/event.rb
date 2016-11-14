class Event < ApplicationRecord
  def free?
    price == 0 || price == nil
  end

  def self.upcoming
    where("starts_at >= ?", Time.now).order("starts_at")
  end

end
