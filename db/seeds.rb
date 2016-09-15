# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Orderitem.delete_all
Order.delete_all
User.delete_all
Product.delete_all
Category.delete_all

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
  image: "http://res.cloudinary.com/angela2389/image/upload/v1473845389/YonexArcSaber_aosbti.jpg")

Product.create(
  reference_number: 1442,
  name: 'Yonex Strong',
  sub_header: "For experienced players",
  description: "With this racket you will beat them all",
  price: 69.99,
  stock: 10,
  category: rackets,
  brand: 'Yonex',
  image: "http://res.cloudinary.com/angela2389/image/upload/v1473845394/YonexMusclePower_ndm3nm.jpg")

Product.create(
  reference_number: 1443,
  name: 'Yonex Power',
  sub_header: "For Pro's",
  description: "Powerfull frame, looking amazing",
  price: 120.99,
  stock: 10,
  category: rackets,
  brand: 'Carlton',
  image: "http://res.cloudinary.com/angela2389/image/upload/v1473845398/YonexNanoray_brrqou.jpg")

Product.create(
  reference_number: 2440,
  name: 'Feather Shuttles',
  sub_header: "Nice looking feather shuttles",
  description: "Feathers",
  price: 25.50,
  stock: 100,
  category: shuttles,
  brand: 'Yonex',
  image: "http://res.cloudinary.com/angela2389/image/upload/v1473845638/yonexshuttles_m75g1j.jpg")

Product.create(
  reference_number: 2441,
  name: 'Feather Shuttles',
  sub_header: "Nice looking feather shuttles",
  description: "Feathers",
  price: 19.50,
  stock: 80,
  category: shuttles,
  brand: 'Carlton',
  image: "http://res.cloudinary.com/angela2389/image/upload/v1473845466/carltonshuttles_bk9e1v.jpg")

Product.create(
  reference_number: 3440,
  name: 'Blue shirt',
  sub_header: "Nice looking shirt",
  description: "One fit all",
  price: 39.99,
  stock: 10,
  category: clothes,
  brand: 'Carlton',
  image: "http://res.cloudinary.com/angela2389/image/upload/v1473845428/femaleshirt_dtunwc.png")

Product.create(
  reference_number: 3441,
  name: 'White yellow shirt',
  sub_header: "Nice looking shirt for men",
  description: "One fit all",
  price: 39.99,
  stock: 10,
  category: clothes,
  brand: 'Carlton',
  image: "http://res.cloudinary.com/angela2389/image/upload/v1473845380/maleshirt_odzp14.png")

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

User.create(
  first_name: "Admin",
  email: "admin@gmail.com",
  password: "123456",
  admin: true,
)
