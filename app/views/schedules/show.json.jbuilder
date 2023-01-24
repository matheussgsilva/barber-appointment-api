json.id @schedule.id
json.barber @schedule.barber.name
json.client @schedule.user.name
json.scheduled_at @schedule.scheduled_at
json.service do
  json.name @schedule.service.name
  json.price @schedule.service.price
end
