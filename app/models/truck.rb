class Truck < ApplicationRecord
  has_one :driver

  def some_method
    'some method return'
  end
end
