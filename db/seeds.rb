User.destroy_all

matheus = User.create(email: "matheus.silva@gmail.com", name: "Matheus Silva", password: 123456)

barba = Service.create(name: "Barba", price: 20, duration: 30)
cabelo = Service.create(name: "Cabelo", price: 30, duration: 30)
barba_cabelo = Service.create(name: "Barba + Cabelo", price: 50, duration: 60)

jose = Barber.create(name: "José", services: [barba, cabelo, barba_cabelo])