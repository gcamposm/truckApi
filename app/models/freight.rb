class Freight < ApplicationRecord
  # RELATIONS
  has_many :transports

  def self.allowed_attributes
    %i[date driver_id truck_id commune_id]
  end
end
