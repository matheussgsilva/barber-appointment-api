User.destroy_all
Service.destroy_all
Barber.destroy_all
Schedule.destroy_all

matheus = User.create(email: "matheus.silva@gmail.com", name: "Matheus Silva", password: 123456)
paulo = User.create(email: "paulo@gmail.com", name: "Paulo", password: 123456)

barba = Service.create(name: "Barba", price: 20, duration: 30)
cabelo = Service.create(name: "Cabelo", price: 30, duration: 30)
barba_cabelo = Service.create(name: "Barba + Cabelo", price: 50, duration: 60)

jose = Barber.create(name: "José", services: [barba, cabelo, barba_cabelo])
laura = Barber.create(name: "Laura", services: [barba, cabelo])
carlos = Barber.create(name: "carlos", services: [barba, cabelo, barba_cabelo])

service01 = Schedule.create(barber: jose, service: barba, user: matheus, scheduled_at: "2023-01-26T00:00:00.000Z")
service02 = Schedule.create(barber: laura, service: cabelo, user: paulo, scheduled_at: "2023-01-27T00:00:00.000Z")