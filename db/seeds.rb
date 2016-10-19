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
Brand.delete_all
Category.delete_all

shuttles = Category.create( name: 'Shuttles')
rackets = Category.create( name: 'Rackets')
clothes = Category.create( name: 'Clothes')
shoes = Category.create( name: 'Shoes')
bags = Category.create( name: 'Bags')

yonex = Brand.create(name: "Yonex")
babolat = Brand.create(name: "Babolat")
forza = Brand.create(name: "Forza")
artengo = Brand.create(name: "Artengo")
carlton = Brand.create(name: "Carlton")
lining = Brand.create(name: 'LI Ning')
kawasaki = Brand.create(name: 'Kawasaki')
asics = Brand.create(name: "Asics")

product1 = Product.create(
  reference_number: 1441,
  name: 'Yonex X1',
  sub_header: "For beginners",
  description: "For players who are not so familiar with the sport yet",
  price: 25.99,
  stock: 10,
  category: rackets,
  brand: yonex,
  image: "http://res.cloudinary.com/angela2389/image/upload/v1473845389/YonexArcSaber_aosbti.jpg")

product2 = Product.create(
  reference_number: 1442,
  name: 'Yonex Strong',
  sub_header: "For experienced players",
  description: "With this racket you will beat them all",
  price: 69.99,
  stock: 10,
  category: rackets,
  brand: yonex,
  image: "http://res.cloudinary.com/angela2389/image/upload/v1473845394/YonexMusclePower_ndm3nm.jpg")

Product.create(
  reference_number: 1443,
  name: 'Yonex Power',
  sub_header: "For Pro's",
  description: "Powerfull frame, looking amazing",
  price: 120.99,
  stock: 10,
  category: rackets,
  brand: yonex,
  image: "http://res.cloudinary.com/angela2389/image/upload/v1473845398/YonexNanoray_brrqou.jpg")

Product.create(
  reference_number: 1444,
  name: 'Babolat S4',
  sub_header: "For quick shots",
  description: "Designed by Tiki Wang",
  price: 99.99,
  stock: 20,
  category: rackets,
  brand: babolat,
  image: "http://res.cloudinary.com/angela2389/image/upload/v1476450414/badmintonracketbabolat_w0knjf.jpg")

Product.create(
  reference_number: 1445,
  name: 'Artengo Ca3',
  sub_header: "Sharp priced racket, when quality doesn't matter",
  description: "Usefull for on the camping!",
  price: 5.99,
  stock: 10,
  category: rackets,
  brand: artengo,
  image: "http://res.cloudinary.com/angela2389/image/upload/v1476450484/Artengo_basic_bqpq2h.jpg")

Product.create(
  reference_number: 1446,
  name: 'Forza Power',
  sub_header: "Heavy, but powerfull racket",
  description: "For allround competition players",
  price: 108.99,
  stock: 10,
  category: rackets,
  brand: forza,
  image: "http://res.cloudinary.com/angela2389/image/upload/v1476711922/Forzabadmintonracket_nbptoq.jpg")

Product.create(
  reference_number: 2440,
  name: 'Feather Shuttles',
  sub_header: "Nice looking feather shuttles",
  description: "Feathers",
  price: 25.50,
  stock: 100,
  category: shuttles,
  brand: yonex,
  image: "http://res.cloudinary.com/angela2389/image/upload/v1473845638/yonexshuttles_m75g1j.jpg")

Product.create(
  reference_number: 2441,
  name: 'Feather Shuttles',
  sub_header: "Nice looking feather shuttles",
  description: "Feathers",
  price: 19.50,
  stock: 80,
  category: shuttles,
  brand: carlton,
  image: "http://res.cloudinary.com/angela2389/image/upload/v1473845466/carltonshuttles_bk9e1v.jpg")

Product.create(
  reference_number: 3440,
  name: 'Carlton shirt for women',
  sub_header: "Nice looking shirt",
  description: "One fit all",
  price: 39.99,
  stock: 10,
  category: clothes,
  brand: carlton,
  image: "http://res.cloudinary.com/angela2389/image/upload/v1473845428/femaleshirt_dtunwc.png")

Product.create(
  reference_number: 3441,
  name: 'Carlton shirt for men',
  sub_header: "Nice looking shirt for men",
  description: "One fit all",
  price: 39.99,
  stock: 10,
  category: clothes,
  brand: carlton,
  image: "http://res.cloudinary.com/angela2389/image/upload/v1473845380/maleshirt_odzp14.png")

Product.create(
  reference_number: 3442,
  name: 'Yonex shirt for men',
  sub_header: "Looking cool, feeling cool",
  description: "One fit all",
  price: 49.99,
  stock: 10,
  category: clothes,
  brand: yonex,
  image: "http://res.cloudinary.com/angela2389/image/upload/v1476783708/Yonexshirt_dnxqua.jpg")

Product.create(
  reference_number: 4440,
  name: 'LI Ning Speed',
  sub_header: "Cushion all around badminton shoe",
  description: "One fit all",
  price: 79.99,
  stock: 10,
  category: shoes,
  brand: lining,
  image: "http://res.cloudinary.com/angela2389/image/upload/v1476867183/badmintonshoe_u8ev9s.jpg")

Product.create(
  reference_number: 4441,
  name: 'Asics X10',
  sub_header: "Strong shoe, very flexible",
  description: "One fit all",
  price: 69.99,
  stock: 10,
  category: shoes,
  brand: asics,
  image: "http://res.cloudinary.com/angela2389/image/upload/v1476867183/badmintonshoeasics_ogclv7.jpg")

Product.create(
  reference_number: 4441,
  name: 'Yonex RSpeed',
  sub_header: "Flexible shoe, for the highest speed",
  description: "One fit all",
  price: 69.99,
  stock: 10,
  category: shoes,
  brand: yonex,
  image: "http://res.cloudinary.com/angela2389/image/upload/v1476867183/badmintonshoe_l5fzeb.jpg")

Product.create(
  reference_number: 5440,
  name: 'Yonex Y16 Bag',
  sub_header: "Soft bag with a lot of space",
  description: "Can fit 6 rackets, clothes and shoes",
  price: 70.99,
  stock: 10,
  category: bags,
  brand: yonex,
  image: "http://res.cloudinary.com/angela2389/image/upload/v1476867183/badmintonbag_qljhjs.jpg")

Product.create(
  reference_number: 5441,
  name: 'Kawasaki bag',
  sub_header: "Strong material, light weight",
  description: "Cool colors",
  price: 64.99,
  stock: 10,
  category: bags,
  brand: kawasaki,
  image: "http://res.cloudinary.com/angela2389/image/upload/v1476867183/badmintonbagka_xl6uz0.jpg")

lydia = User.create(
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

order1 = Order.create(
  user: lydia,
  deliveryaddress: "Kakelweg 1, 1700BB Medemblik",
  status: "Shipped",
  total_price: 121.97,
  paymentmethod: "Cash on delivery",
)

Orderitem.create(
  order: order1,
  product: product1,
  quantity: 2,
  subtotal: 51.98,
)

Orderitem.create(
  order: order1,
  product: product2,
  quantity: 1,
  subtotal: 69.99,
)
