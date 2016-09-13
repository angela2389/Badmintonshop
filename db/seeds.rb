# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.delete_all
Category.delete_all
User.delete_all

shuttles = Category.create( name: 'Shuttles')
rackets = Category.create( name: 'Rackets')
clothes = Category.create( name: 'Clothes')

Product.create(
  reference_number: 1441,
  name: 'Yonex X1',
  sub_header: "For beginners",
  description: "For players who are not so familiar with the sport yet",
  price: 25.99,
  stock: 10,
  category: rackets,
  brand: 'Yonex',
  image: "http://www.decathlon.nl/media/834/8343028/classic_dc52414e34184593a66297f81fe9d762.jpg")

Product.create(
  reference_number: 1442,
  name: 'Yonex Strong',
  sub_header: "For experienced players",
  description: "With this racket you will beat them all",
  price: 69.99,
  stock: 10,
  category: rackets,
  brand: 'Yonex',
  image: "http://www.decathlon.nl/media/834/8343028/classic_dc52414e34184593a66297f81fe9d762.jpg")

Product.create(
  reference_number: 1443,
  name: 'Yonex Power',
  sub_header: "For Pro's",
  description: "Powerfull frame, looking amazing",
  price: 120.99,
  stock: 10,
  category: rackets,
  brand: 'Carlton',
  image: "http://www.decathlon.nl/media/834/8343028/classic_dc52414e34184593a66297f81fe9d762.jpg")

Product.create(
  reference_number: 2440,
  name: 'Feather Shuttles',
  sub_header: "Nice looking feather shuttles",
  description: "Feathers",
  price: 25.50,
  stock: 100,
  category: shuttles,
  brand: 'Yonex',
  image: "http://static1.shop.indiatimes.com/images/products/additional/original/B1012630_View_1/sports/feather-shuttles/yonex-feather-shuttlecock-as-50.jpg")

Product.create(
  reference_number: 3440,
  name: 'Blue shirt',
  sub_header: "Nice looking shirt",
  description: "One fit all",
  price: 59.99,
  stock: 10,
  category: clothes,
  brand: 'Yonex',
  image: "http://www.badminton-eshop.com/images/products/large_175_Screen_Shot_2014-04-17_at_16.10.28.png")

User.create(
  first_name: "Lydia",
  last_name: "Vermeer",
  email: "lydiavermeer@gmail.com",
  password: "123456",
  street: "Lagedijk",
  house_number: 25,
  postal: "1100BR",
  city: "Medemblik",
  country: "The Netherlands"
)
