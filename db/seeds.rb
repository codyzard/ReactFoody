#user
User.create!(name:  "admin",
  phone: "0774455559",
  email: "admin@gmail.com",
  avatar: "avatar.jpg",
  password:              "123456",
  password_confirmation: "123456",
  role: 1)
10.times do |n|
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

10.times do
    name = Faker::Food.dish
    description = Faker::Food.description
    quantity = 100
    price = rand(20000...200000)
    image = "https://nhanlucquocte.net/wp-content/uploads/2019/04/mi-ramen.jpg"

    category_id = Category.all[rand(0..4)].id
    classify = rand(0..1)
    Product.create!(name: name, description: description, quantity: quantity, price: price, 
    image: image, category_id: category_id, classify:classify)
end

10.times do
  comment = Faker::Restaurant.review
  rate = rand(1..5)
  user_id = User.all[rand(0..9)].id
  product_id = Product.all[rand(0..9)].id
  Review.create!(comment: comment, rate: rate, user_id: user_id, product_id: product_id)
end