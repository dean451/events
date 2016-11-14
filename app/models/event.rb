class Event < ApplicationRecord
  def free?
    price == 0 || price == nil
  end
end
