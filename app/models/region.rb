class Region < ApplicationRecord
  # RELATIONS
  belongs_to :country
  has_many :communes
end
