json.array! @barbers do |barber|
  json.id barber.id
  json.name barber.name
  json.service_id barber.service_id
end