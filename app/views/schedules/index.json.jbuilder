json.array! @schedules do |schedule|
  json.id schedule.id
  json.barber schedule.barber.name
  json.scheduled_at schedule.scheduled_at
  
end