json.array! @trucks do |truck|
  json.id truck.id
  json.license truck.license
  json.driver do
    json.first_name truck.driver.first_name
  end
  json.another_driver_mode truck.driver, :first_name, :last_name
  json.set! :some_method, truck.some_method
end