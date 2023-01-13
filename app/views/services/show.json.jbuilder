json.id @service.id
json.name @service.name

json.barbers @service.barbers do |barber|
  json.id barber.id
  json.name barber.name
end