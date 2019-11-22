#user
User.create!(name:  "admin",
  phone: "0774455559",
  email: "admin@gmail.com",
  avatar: "avatar.jpg",
  password:              "123456",
  password_confirmation: "123456",
  role: 1)
50.times do |n|
name  = Faker::Name.name
email = "user#{n+1}@gmail.com"
password = "123456"
phone = "0774455559"
avatar= "avatar.jpg"
User.create!(name:  name,
    phone: phone,
    avatar: avatar,
    email: email,
    password:              password,
    password_confirmation: password,
    role: 2)
end

categories = ["Beef","Pork","Chicken","Hot pot","Soup","Sushi","Sea food","Beer","Milk tea","Smoothies","Tea","Cocktail","Coffee"]

for i in 0..6
  name= categories[i]
  classify= 1;
  Category.create!(name:name, classify: classify)
end

for i in 7..12
  name= categories[i]
  classify= 0;
  Category.create!(name:name, classify: classify)
end

50.times do
    name = Faker::Food.dish
    description = Faker::Food.description[1..30]
    quantity = 100
    price = rand(1..9)*15000
    image = "https://nhanlucquocte.net/wp-content/uploads/2019/04/mi-ramen.jpg"
    rate = 0
    category_id = Category.all[rand(0..12)].id
    classify = rand(0..1)
    Product.create!(name: name, description: description, quantity: quantity, price: price, 
    image: image, category_id: category_id, classify:classify, rate: rate)
end

100.times do
  comment = Faker::TvShows::Friends.quote 
  rate = rand(0..5)
  user_id = User.all[rand(0..49)].id
  product_id =  Product.all[rand(0..49)].id
  Review.create!(comment: comment, rate: rate, user_id: user_id, product_id: product_id)
end

products = Product.all
products.each do |product|
  avr_rate = product.average_rate
  product.update_attribute(:rate, avr_rate)
end

10.times do
  status= rand(4)
  user_id= 1
  Cart.create!(status: status, user_id: user_id)
end