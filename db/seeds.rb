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

categories = ["Chien xao","Lau","Nuong","Sushi","Hai san"]
i = 0;
5.times do
  name = categories[i];
  description = Faker::Food.description
  i = i + 1;
  Category.create!(name: name, description: description);
end
10.times do
    name = Faker::Name.name
    description = "Coca cola la orion"
    quantity = 100
    price = 10000
    # image = "no_image.jpg"
    image = "dong2.gif"
    category_id = Category.all[rand(0..4)].id
    classify = rand(0..1)
    Product.create!(name: name, description: description, quantity: quantity, price: price, 
    image: image, category_id: category_id, classify:classify)
end

  