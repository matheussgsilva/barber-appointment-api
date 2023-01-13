json.id @barber.id
json.name @barber.name

json.services @barber.services do |service|
  json.id service.id
  json.name service.name
  json.price service.price
end
