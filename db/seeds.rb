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

# 50.times do
#     name = Faker::Food.dish
#     description = Faker::Food.description[1..30]
#     quantity = 100
#     price = rand(1..9)*15000
#     image = "https://nhanlucquocte.net/wp-content/uploads/2019/04/mi-ramen.jpg"
#     rate = 0
#     category_id = Category.all[rand(0..12)].id
#     classify = rand(0..1)
#   Product.create!(name: name, description: description, quantity: quantity, price: price, 
#   image: image, category_id: category_id, classify:classify, rate: rate)
# end
Product.create!(name: "Thịt bò xào", 
description: "Thịt bò là nguyên liệu phổ biến trong việc bếp núc hàng ngày của chúng ta. Thịt bò là loại thịt giàu protein, thích hợp để bổ sung máu và tái tạo tế bào mô.", 
quantity: 50, 
price: 50000, 
  image: "https://sohanews.sohacdn.com/thumb_w/660/2018/9/28/photo1538122112874-15381221128741974230038.jpeg", 
  category_id: 1, 
  classify:1, 
  rate: 0)

Product.create!(name: "Thịt bò hầm kiểu pháp", 
  description: "Tuy nhiên, riêng đối với món bò hầm kiểu Pháp thì khác, món ăn hấp dẫn và độc đáo này không hề khó làm một chút nào.", 
  quantity: 60, 
  price: 40000, 
    image: "https://cdn.daynauan.info.vn/wp-content/uploads/2016/08/bo-ham-nam-kieu-phap.jpg", 
    category_id: 1, 
    classify:1, 
    rate: 0)

Product.create!(name: "Thịt heo chiên nước mắm", 
description: "Thịt heo chiên giòn da là món ăn được nhiều người yêu thích trong thời gian gần đây. Cuốn hút người dùng nhờ lớp da vàng giòn bên ngoài và gia vị thấm đều, đậm đà ", 
quantity: 30, 
price: 55000, 
  image: "https://i.ytimg.com/vi/ZcvbRBfP0D8/maxresdefault.jpg", 
  category_id: 2, 
  classify:1, 
  rate: 0)


Product.create!(name: "Thịt heo luộc", 
  description: "Cho miếng thịt luộc vào xoong, đổ nước lạnh ngập miếng thịt luộc 2-3 cm.", 
  quantity: 30, 
  price: 50000, 
    image: "https://media.ex-cdn.com/EXP/media.phunutoday.vn/files/dataimages/201410/11/original/thit-luoc_1412996886.jpg", 
    category_id: 2, 
    classify:1, 
    rate: 0)

Product.create!(name: "Cánh gà chiên nước mắm", 
description: "Cách làm cánh gà chiên nước mắm không cầu kì về mặt nguyên liệu nhưng nếu làm không khéo, cánh gà có thể bị khô quá hoặc mềm quá", 
quantity: 20, 
price: 70000, 
  image: "https://daubepgiadinh.vn/wp-content/uploads/2016/09/canh-ga-chien-nuoc-mam.jpg", 
  category_id: 3, 
  classify:1, 
  rate: 0)

Product.create!(name: "Gỏi gà trộn rau răm", 
description: "Là sự lựa chọn hàng đầu cho món khai vị của những buổi tiệc dù lớn hay nhỏ, gỏi gà được ưa chuộng bởi vị thơm ngon đặc trưng của gà", 
quantity: 25, 
price: 65000, 
  image: "http://www.monngon.tv/uploads/images/2017/03/04/55b26d1f69df6a894c7388f18677f36b-cach-lam-goi-ga-rau-ram-5-slideshow.jpg", 
  category_id: 3, 
  classify:1, 
  rate: 0)

  Product.create!(name: "Lòng gà xào cay", 
description: "Lòng gà non xào cay là món ăn chế biến cực đơn giản nhưng không kém phần hấp dẫn và lạ miệng.", 
quantity: 28, 
price: 65000, 
  image: "https://photo-1-baomoi.zadn.vn/w700_r1/2019_03_19_188_30034467/015b70f786b66fe836a7.jpg", 
  category_id: 3, 
  classify:1, 
  rate: 0)

Product.create!(name: "Lẩu gà lá giang", 
description: "Lẩu gà lá giang là một món ăn được rất nhiều người dân Việt Nam yêu thích bởi vị chua thanh tự nhiên từ lá giang sẽ làm thay đổi khẩu vị", 
quantity: 10, 
price: 120000, 
  image: "https://www.foodpanda.vn/wp-content/uploads/2018/11/lau-ga-la-giang-7.jpg", 
  category_id: 4, 
  classify:1, 
  rate: 0)

Product.create!(name: "Lẩu bò nhúng giấm", 
description: "Dọn nồi nước ra, đắt trên bếp ga hoặc điện, bày thịt bò, rau sống, bún, bánh tráng xung quanh. Để lửa vừa đủ cho nồi nhúng sôi lăn tăn.", 
quantity: 5, 
price: 200000, 
  image: "https://www.cet.edu.vn/wp-content/uploads/2018/04/lau-bo-nhung-dam.jpg", 
  category_id: 4, 
  classify:1, 
  rate: 0) 

Product.create!(name: "Lẩu Thái hải sản", 
description: "Nếu có món lẩu thái hải sản ngon mà ăn vào thời tiết se lạnh như tiết trời chớm đông thì thật là tuyệt", 
quantity: 10, 
price: 160000, 
  image: "https://giadinh.tv/wp-content/uploads/2018/11/lau-hai-san-ngon.jpeg", 
  category_id: 4, 
  classify:1, 
  rate: 0) 

Product.create!(name: "Lẩu riêu cua bắp bò", 
description: "Mùa đông đến rồi, cùng vào bếp với chuyên trang các món ngon dễ làm để học cách thực hiện món lẩu riêu cua bắp bò để đãi gia đình, bạn bè", 
quantity: 10, 
price: 250000, 
  image: "https://nghebep.com/wp-content/uploads/2018/01/lau-rieu-cua-bap-bo.jpg", 
  category_id: 4, 
  classify:1, 
  rate: 0) 
Product.create!(name: "Súp ghẹ", 
description: "Ghẹ mua về rửa sạch, bỏ vào nồi luộc chín, bạn nhớ đậy nắp nồi, ghẹ sẽ ra nước nên không cần đổ nước", 
quantity: 50, 
price: 40000, 
  image: "https://nauankhongkho.com/wp-content/uploads/2017/10/x0-3.png.pagespeed.ic.d614Bq9W6V.webp", 
  category_id: 5, 
  classify:1, 
  rate: 0) 
  Product.create!(name: "Súp bò viên", 
description: "Nguyên liệu: cho 5 ­ 6 khẩu phần ăn ­ 500g xương lợn, có thể dùng xương ống, 1 củ cải trắng, 1 nhúm tôm khô, 1 củ cà rốt", 
quantity: 20, 
price: 25000, 
  image: "https://nauankhongkho.com/wp-content/uploads/2017/10/x1-13.png.pagespeed.ic.DL7XA5xmOC.webp", 
  category_id: 5, 
  classify:1, 
  rate: 0) 
  Product.create!(name: "Nigiri sushi", 
description: "Nigiri sushi là loại sushi nắm gồm cơm trộn với giấm, phía trên được đắp bằng hải sản và có thể có thêm 1 ít gừng hoặc vài cọng hành xay nhỏ.", 
quantity: 10, 
price: 35000, 
  image: "https://media.foody.vn/images/foody-yen-sushi-sake-pub-le-quy-don-509-635932524643831064.jpg", 
  category_id: 6, 
  classify:1, 
  rate: 0) 
Product.create!(name: "Chirashi sushi", 
description: "Chirashi sushi là một loại sushi rất được yêu thích ở Nhật Bản với phần cơm được để trong tô, sau đó được rượu", 
quantity: 15, 
price: 70000, 
  image: "https://media.foody.vn/images/5074989825_f550965831_b.jpg", 
  category_id: 6, 
  classify:1, 
  rate: 0) 
  Product.create!(
    name: "Tôm hùm nướng",
    description: "Tôm hùm tự nhiên ,tươi ngon", 
    quantity:10  ,
    price: 600000, 
    image: "https://media-cdn.tripadvisor.com/media/photo-s/18/3a/09/6c/bonefish-seafood-platter.jpg",
    category_id: 7  ,
    classify: 1,
    rate: 0
    )
    Product.create!(
    name: "Hải sản thập cẩm ",
    description: "Nguyên liệu tươi sống", 
    quantity: 112 ,
    price: 1000000, 
    image: "https://www.shoalhaven.com/sites/default/files/styles/st_parallax/public/paragraph-images/pelican-rocks-cafe.jpg?itok=BS5VWWZ5",
    category_id: 7  ,
    classify: 1,
    rate: 0
    )

    Product.create!(
      name: "Bia Heniken",
      description: "Sản xuất trên quy trình công nghệ hiện đại", 
      quantity: 100  ,
      price: 23000, 
      image: "https://bianhapkhau.net/wp-content/uploads/2019/05/bia-heineken-ph%C3%A1p-chai-250-600x602.png",
      category_id:   8,
      classify: 0,
      rate: 0
      )
      Product.create!(
      name: "Bia Tiger Crystal",
      description: "Bia số 1 Việt Nam,", 
      quantity: 300 ,
      price: 15000, 
      image: "https://cdn.tgdd.vn/Products/Images/2282/171020/bhx/bia-tiger-bac-lon-330ml-loc-6-2-org.jpg",
      category_id: 8  ,
      classify: 0,
      rate: 0
      )
      Product.create!(
      name: "Trà sữa kem xoài ",
      description: "Gong Cha Best seller", 
      quantity:40  ,
      price: 40000, 
      image: "https://vietblend.vn/wp-content/uploads/2018/12/1-mango-gong-cha-15245924876811469988245.jpg",
      category_id:9   ,
      classify: 0,
      rate: 0
      )
      Product.create!(
      name: "Godden Bubble Milk Tea",
      description: "Koi thé Must Try", 
      quantity:  30,
      price: 53000, 
      image: "http://gaysornvillage.com/content/dining_image/218-1pD83u7175267D23.png",
      category_id: 9  ,
      classify: 0 ,
      rate: 0
      )
      Product.create!(
      name: "Fozen fruit Smoothie ",
      description: "Nguyên liệu từ dâu rừng và trà xanh ", 
      quantity: 20 ,
      price: 69000, 
      image: "https://www.dinneratthezoo.com/wp-content/uploads/2018/05/frozen-fruit-smoothie-3.jpg",
      category_id:   10,
      classify: 0,
      rate: 0
      )
      Product.create!(
      name: "Mango Pineapple Smoothie",
      description:"Xoài tươi thiên nhiên và mật ong", 
      quantity:  100,
      price: 45000, 
      image: "https://www.ambitiouskitchen.com/wp-content/uploads/2019/07/Mango-Pineapple-Coconut-Smoothie-4-725x725.jpg",
      category_id:  10 ,
      classify: 0,
      rate: 0
      )
      Product.create!(
      name: "Earl grey tea",
      description: "Trà xanh tốt cho sức khoẻ", 
      quantity: 10 ,
      price: 100000, 
      image: "https://m.economictimes.com/thumb/msid-71292536,width-1200,height-900,resizemode-4,imgsize-770251/green-tea_thinkstockphotos.jpg",
      category_id:  11 ,
      classify: 0,
      rate: 0
      )
      Product.create!(
      name: "Tea honey",
      description: "Trà mật ong tốt cho tim mạch", 
      quantity: 60 ,
      price: 150000, 
      image: "https://i1.wp.com/www.studentprintz.com/wp-content/uploads/2019/04/tea-healthline.jpg?fit=1155%2C648",
      category_id:   11,
      classify: 0,
      rate: 0
      )
      Product.create!(
      name: " Sweet Possion Cooktail",
      description: "This tropical cocktail is not only beautiful but delicious and refreshing", 
      quantity: 120 ,
      price:200000 , 
      image: "https://dishesdelish.com/wp-content/uploads/2019/09/Sweet-Poison-Cocktail-redo-10.jpg",
      category_id:  12 ,
      classify: 0,
      rate: 0
      )
      Product.create!(
      name: " Champagne Cooktail",
      description: "Rượu champagne thượng hạng ", 
      quantity: 10 ,
      price: 800000, 
      image: "http://res.cloudinary.com/hksqkdlah/image/upload/v1568666100/SFS_champagne_cocktail_150_d2wzhn.jpg",
      category_id:12   ,
      classify: 0,
      rate: 0
      )
      Product.create!(
      name: "Milk Coffee Chocolate",
      description: "Cà phê robusta hảo hạng", 
      quantity: 100 ,
      price: 80000, 
      image: "https://static.independent.co.uk/s3fs-public/thumbnails/image/2016/06/15/14/pp-hot-coffee-rf-istock.jpg?w968h681",
      category_id: 13  ,
      classify: 0,
      rate: 0
      )
      Product.create!(
      name: "Latte Macchiato",
      description: "Latte Macchiato (Latte) là một loại cafe nóng gồm cafe Espresso và sữa. Về cơ bản, Latte giống như cafe sữa nhưng ngọt hơn. ", 
      quantity:  10,
      price: 30000, 
      image: "https://www.hoteljob.vn/files/Anh-HTJ-Hong/phan-biet-8-loai-thuc-uong-ca-phe-hot-nhat-hien-nay-3.jpg",
      category_id: 13  ,
      classify: 0,
      rate: 0
      )
Product.create!(
name: "Topping Beef Steakhous ",
description: "lozi Miếng bò bự nha trên mặt có topping là mấy cái hạt và thảo mộc rang, siêu thơm.",
quantity: 100  ,
price: 100000 ,
image: "https://tea-4.lozi.vn/v1/images/resized/topping-beef-1538360755-1-6234444-1548815673",
category_id:   1,
classify: 1,
rate: 0
)
Product.create!(
name: "Beef steak",
description: "cá hồi ,  beef steak  tái ngon không thể cưỡng ",
quantity: 100  ,
price: 90000 ,
image: "https://tea-1.lozi.vn/v1/images/resized/ca-hoi-sot-dau-nanh-beef-steak-1517719878-1-5629165-1517719878?w=1920&type=s",
category_id:   1,
classify: 1,
rate: 0
)
Product.create!(
name: "Beef steak red wine sauce",
description: "Cách làm rất đơn giản!Chọn bò thăn, dày 10cm, lọc hết gân và mỡ.",
quantity: 100  ,
price: 120000 ,
image: "https://tea-1.lozi.vn/v1/images/resized/beef-steak-red-wine-sauce-1516777616-1-5565721-1516777616?w=1440&type=s",
category_id:   1,
classify: 1,
rate: 0
)
Product.create!(
name: "Thịt heo nướng sốt trứng",
description: "Không làm thất vọng người mua ,sốt hollaindaise siêu ngon",
quantity: 100  ,
price: 140000 ,
image: "https://tea-2.lozi.vn/v1/images/resized/roasted-pork-belly-eggs-benedict-at-the-diner-v-1526269285-1-5940970-1526269285?w=1440&type=s ",
category_id:   2,
classify: 1,
rate: 0
)
Product.create!(
name: "Pork Floss Castella",
description: "Món này sẵn sàng được ship đến nhà bạn ",
quantity: 100  ,
price: 149000 ,
image: "https://tea-2.lozi.vn/v1/images/resized/pork-floss-castella-1515352619-1-5364083-1515352619?w=1920&type=o ",
category_id:   2,
classify: 1,
rate: 0
)
Product.create!(
name: "Grill pork chop",
description: "hãy cứ tưởng đây là phiên bản cơm tấm sườn nhưng không có cơm và miếng sườn nó to hơn . ",
quantity: 100  ,
price: 350000 ,
image: "https://tea-1.lozi.vn/v1/images/resized/grill-pork-chop-1500465704-2-3193257-1500465704?w=1440&type=s ",
category_id:   2,
classify: 1,
rate: 0
)
Product.create!(
name: "Chân Gà & Cánh Gà Nướng",
description: " không thể cưỡng nổi",
quantity: 100  ,
price: 120000 ,
image: "https://images.foody.vn/res/g3/29950/prof/s576x330/foody-mobile-gaf-jpg-625-635774031832188720.jpg ",
category_id:   3,
classify: 1,
rate: 0
)
Product.create!(
name: "Cơm Rang Gà Quay",
description: "Hương vị mẹ nấu",
quantity: 100  ,
price: 112000 ,
image: "https://images.foody.vn/res/g2/13882/s180x180/foody-com-rang-ga-quay-ba-trieu-153-636036312923249467.jpg ",
category_id:   3,
classify: 1,
rate: 0
)
Product.create!(
name: "King Dakgalbi - Gà Xào Phomai",
description: "không ngon không lấy tiền",
quantity: 100  ,
price: 135000 ,
image: "https://images.foody.vn/res/g22/218625/prof/s576x330/foody-mobile-21215153-jpg-872-636127324150928226.jpg ",
category_id:   3,
classify: 1,
rate: 0
)

Product.create!(
name: "Lẩu cá khoai",
description: "Lẩu cá khoai (cá cháo) thơm ngon từ thịt cá, mềm ngọt của nước lẩu kết hợp với rau củ vô cùng hấp dẫn",
quantity: 100  ,
price: 50000, 
image: "https://lh5.googleusercontent.com/rynJQ2tjU8voHxJZ6dMny2B-UZLNth4ZYviStx4DYnPEyvrYQp1kAMXEg9LfgwzRgx8V9Wv73aFUsMmxKPLgjm-vC7Ixxedn-q70D6-s-S5oWKkk904Z5vS9gOi5WI7VR3X8Goa2",
category_id:   4,
classify: 1,
rate: 0
)
Product.create!(
name: "Lẩu riêu cua gà ta",
description: "Món lẩu này tuy cách chế biến hơi mất một chút thời gian nhưng ăn rất ngon và đáng để bạn bỏ thời gian và công sức.",
quantity: 100  ,
price: 20000 ,
image: "https://lh5.googleusercontent.com/-z93WXDeTF7ldw78_l5Kyb_ZwTXr5pzpl085nAVxf7dVGce_WHlpwdfl_8Q1sMr6ISswr_J544gRBtwwJhop41aF_5yMsrZ2H_wc3hJR7tQhm9PKe-AXhriSv7zSqWz-W1Cl3wnb",
category_id:   4,
classify: 1,
rate: 0
)
Product.create!(
name: "Lẩu ếch nấu măng",
description: "Lẩu ếch nấu măng, nước lẩu chua cay mặn ngọt rất là vừa miệng, thịt ếch xào săn rất đậm đà với từng miếng măng vàng giòn. ",
quantity: 100  ,
price: 60000 ,
image: "https://lh3.googleusercontent.com/L0fw9WGvjWK6Y4_ERrKuV_qkX8XDgcm55SLPLCEv77_mJumc3aqUUTE8KmruUdtQxJJT5l5XrmyznyrpKzb4JnzuPjebRJU3wshj2XglYcKtalGlH9vvj6CYtUFkkXOA_qJW4wp9",
category_id:   4,
classify: 1,
rate: 0
)


Product.create!(
name: "Súp ghẹ và nấm đông cô",
description: "Phi thơm hành và xào phần thịt ghẹ. Cho thịt ghẹ này vào nồi nước dùng cùng với cà rốt và nấu nhỏ lửa.",
quantity: 100  ,
price: 159000 ,
image: "https://yeutre.vn/cdn/medias/uploads/22/22380-sup-4.jpg",
category_id:   5,
classify: 1,
rate: 0
)
Product.create!(
name: "Súp cua biển và nấm tuyết",
description: "Khi dùng bạn trang trí với ít tiêu và hành ngò. Súp dùng nóng bao giờ cũng ngon hơn",
quantity: 100  ,
price: 60000 ,
image: "https://yeutre.vn/cdn/medias/uploads/22/22383-sup-3.jpg",
category_id:   5,
classify: 1,
rate: 0
)
Product.create!(
name: "Súp măng cua",
description: "Lấy măng tây ra khỏi hộp, bỏ nước và cắt măng chéo thành từng khúc vừa ăn cho thật đều sau đó chần lại qua nước sôi",
quantity: 100  ,
price: 30000 ,
image: "https://yeutre.vn/cdn/medias/uploads/22/22381-sup-1.jpg",
category_id:   5,
classify: 1,
rate: 0
)


Product.create!(
name: "Hosomaki sushi",
description: "“Maki” trong tiếng Nhật có nghĩa “cuộn” nên maki sushi chính là loại sushi cuộn – lớp cơm được đặt trên 1 tấm rong biển nori",
quantity: 100  ,
price: 150000,
image: "https://media.foody.vn/images/6f6a457c0c0f78e0.png",
category_id:   6,
classify: 1,
rate: 0
)
Product.create!(
name: "Uramaki sushi ",
description: "Uramaki sushi - khác biệt với các loại maki khác chút vì cơm sẽ được cuộn ở bên ngoài. Đây là loại maki rất quen thuộc ở các nước khác nhưng lại không phổ biến ở Nhật.",
quantity: 100  ,
price: 319000 ,
image: "https://media.foody.vn/images/foody-sushi-hokkaido-sachi-dong-du-952-636091416103039759.jpg",
category_id:   6,
classify: 1,
rate: 0
)
Product.create!(
name: "Temaki sushi",
description: "Temaki sushi – nghĩa là “cuộn bằng tay” vì loại sushi này có thể làm từ lòng bàn tay. Temaki sushi có dạng hình phễu",
quantity: 100  ,
price: 30000 ,
image: "https://media.foody.vn/images/temaki-salmao.jpg",
category_id:   6, 
classify: 1,
rate: 0
)


Product.create!(
name: "Cua Năm Căn Cà Mau",
description: "Cua biển Năm Căn có vỏ cứng, thịt chắc, thơm lại thêm vị ngọt đậm đà",
quantity: 100  ,
price: 45000 ,
image: "https://anh.24h.com.vn/upload/2-2016/images/2016-05-03/1462237926-top-16-mon-an-hai-san-ngon-noi-tieng-khong-nen-bo-qua--2-.jpg",
category_id:   7,
classify: 1,
rate: 0
)
Product.create!(
name: "Ghẹ luộc",
description: "Thịt ghẹ cung cấp nhiều chất đạm, vị lại ngọt và thanh và hầu như không béo và trở thành món hải sản được yêu thích phổ biến.",
quantity: 100  ,
price: 59000 ,
image:"https://anh.24h.com.vn/upload/2-2016/images/2016-05-03/1462237926-top-16-mon-an-hai-san-ngon-noi-tieng-khong-nen-bo-qua--3-.jpg",
category_id:   7,
classify: 1,
rate: 0
)
Product.create!(
name: "Mực nháy Cửa Lò",
description: "Mực Nháy Cửa Lò hấp là món nhanh, ngon và hấp dẫn. Món mực nhảy hấp làm đơn giản, cần rửa sạch mực, lấy túi để nguyên con",
quantity: 100  ,
price: 100000,
image:"http://tuhaoviet.vn/upload_images/images/minhtam/09_05_2016_%20Mua%20nhay%20cua%20lo%202.jpg",
category_id:   7,
classify: 1,
rate: 0
)
Product.create!(
name: "Bia Séc Budweiser Budvar",
description: "Mỗi loại bia ngoại thường sẽ tiến vào một phân khúc thị trường riêng biệt. Như Bia Bỉ thường định vị cho phân khúc cao cấp. ",
quantity: 100  ,
price: 43000,
image:"https://st2.depositphotos.com/1063437/7654/i/950/depositphotos_76549587-stock-photo-bottles-of-budweiser-budvar-beer.jpg",
category_id:   8,
classify: 0,
rate: 0
)
Product.create!(
name: "Bia Staropramen của Tiệp Khắc",
description: "Bia staropramen là một đặc sản, là niềm tự vào và là Vàng trắng của thủ đô Praha hoa lệ. ",
quantity: 100  ,
price: 47000,
image:"https://images.foody.vn/res/g79/786477/prof/s576x330/foody-upload-api-foody-mobile-vuvuzela-jpg-181012111556.jpg ",
category_id:   8,
classify: 0,
rate: 0
)


Product.create!(
name: "Hachico Milk Tea",
description: " trà sữa thơm ngon",
quantity: 100  ,
price: 35000,
image:"https://images.foody.vn/res/g76/753023/prof/s576x330/foody-upload-api-foody-mobile-1-jpg-180622150444.jpg ",
category_id:   9,
classify: 0,
rate: 0
)
Product.create!(
name: "Trà sữa trân châu đường đen",
description: "Trà sữa trân châu đường đen là loại thức uống “lên ngôi” vào hè 2018 với giới trẻ cả 2 miền Bắc, Nam.",
quantity: 100  ,
price: 45000,
image:"http://junenoodlehouse.com/wp-content/uploads/2018/09/sua-tuoi-tran-chau-duong-den-da-co-mat-tai-june-4.jpg",
category_id:   9,
classify: 0,
rate: 0
)
Product.create!(
name: "Trà xoài kem cheese",
description: " giá cả hợp lý",
quantity: 100  ,
price: 60000,
image:"https://cdn.huongnghiepaau.com/wp-content/uploads/2018/07/8d49e1f42a25f39552b52fa6de90477e.jpg",
category_id:   9,
classify: 0,
rate: 0
)
Product.create!(
name: "Smoothie chuối kèm dâu tây",
description: "Nếu đang lăn tăn bởi những nốt mụn đáng ghét thì hãy bổ sung một ly smoothie chuối kèm dâu tây mỗi ngày thì chắc hẳn bạn sẽ có một làn da mịn màng mơ ước đấy.",
quantity: 20  ,
price: 55000,
image:"https://toinayangi.vn/wp-content/uploads/2015/12/Cach-lam-4-loai-smoothie-thom-ngon-bo-duong-2-638x423.jpg",
category_id:   10,
classify: 0,
rate: 0
)
Product.create!(
name: "Smoothie ngũ cốc",
description: "Ngũ cốc rất phổ biến cho bữa ăn sáng, nhất là ở các nước phương Tây, một bát ngũ cốc cho bữa sáng là cũng rất đủ dinh dưỡng ",
quantity: 20  ,
price: 40000,
image:"https://blog.beemart.vn/wp-content/uploads/2019/08/Smoothie-Bowls-1-1024x619.jpg",
category_id:   10,
classify: 0,
rate: 0
)
Product.create!(
name: "Smoothie việt quất",
description: "Lại một loại hoa quả nước được sử dụng để làm nên một ly smoothie tuyệt vời, với vị ngọt của việt quất cùng chút ngậy ngậy của sữa",
quantity: 100  ,
price: 50000,
image:"https://toinayangi.vn/wp-content/uploads/2015/12/Cach-lam-4-loai-smoothie-thom-ngon-bo-duong-4-638x461.png",
category_id:   10,
classify: 0,
rate: 0
)
Product.create!(
name: "Trà Ô Long",
description: "Trà Ô Long được gọi chung nhóm “thanh trà” là một nhóm lớn những loại trà được lên men khoảng từ 20% đến 80%",
quantity: 100  ,
price: 50000,
image:"https://afamilycdn.com/2018/8/17/cong-dung-cua-tra-o-long4-15344988909851747898431-1-0-423-675-crop-15344989556391840772442.jpg",
category_id:   11,
classify: 0,
rate: 0
)
Product.create!(
name: "Hồng trà",
description: "Trà đen (Hồng Trà) còn được gọi là trà đỏ “red tea”. Lá trà được oxy hóa hoàn toàn nên trà thành phẩm có màu đen, thơm nồng, nước trà pha ra có màu đỏ nâu",
quantity: 100  ,
price: 60000,
image:"https://dotea.vn/data/upload/Tin%20tuc/hong-tra.jpg",
category_id:   11,
classify: 0,
rate: 0
)
Product.create!(
name: "Bò hầm cà chua",
description: "Nguyên liệu: Thịt bò, cà chua ba quả, hoa hồi, hạt tiêu, gừng, tỏi, đường, cần tây, hành xanh.",
quantity: 20,
price: 74000,
image: "http://2sao.vietnamnetjsc.vn/images/2017/12/06/15/59/bo-ham-ca-chua.jpg",
category_id: 1,
classify: 1,
rate: 0
)

Product.create!(
name: "Bò xào nấm kim châm",
description: "Nấm rất mau chín, phải làm nhanh, nấm chín quá sẽ bị nhũn, ăn mất ngon và mất nhiều vitamin. ",
quantity: 500,
price: 9240000,
image: "http://2sao.vietnamnetjsc.vn/images/2017/12/06/15/59/bo-xao-nam-kim-cham.jpg",
category_id: 1,
classify: 1,
rate: 0
)

Product.create!(
name: "Thịt bò nấu dưa",
description: "Phi hành thơm với mỡ hoặc dầu rồi cho cà chua vào đảo qua, tiếp đến cho cải chua. Nêm chút gia vị rồi đậy nắp lại đun khoảng 20 phút,",
quantity: 600,
price: 75000,
image: "http://2sao.vietnamnetjsc.vn/images/2017/12/06/16/00/bo-nau-dua-chua.jpg",
category_id: 1,
classify: 1,
rate: 0
)

Product.create!(
name: "Thịt heo chiên xóc tỏi ",
description: "Không chỉ là món ăn ngon dành cho bữa cơm gia đình, thịt heo chiên xóc tỏi còn biến tấu để trở thành món mồi nhắm cực kỳ tuyệt vời",
quantity: 70,
price: 160000,
image: "https://file.organica.vn/uploads/filecloud/2018/August/31/1317-895901535701440-1535701440.jpg",
category_id: 2,
classify: 1,
rate: 0
)

Product.create!(
name: "Thịt heo hầm cà rốt",
description: "Vị ngọt thanh của cà rốt kết hợp với những miếng thịt lợn đậm đà sẽ là món ăn vô cùng hấp dẫn cho bữa cơm gia đình của bạn.",
quantity: 45,
price: 85000,
image: "https://file.organica.vn/uploads/filecloud/2018/August/31/1333-929801535701908-1535701908.jpg",
category_id: 2, 
classify: 1,
rate: 0
)

Product.create!(
name: "Thịt heo bọc sả chiên giòn",
description: "Vỏ thịt giòn giòn, khi cắn vào vừa mềm vừa thơm, thịt heo bọc sả chiên giòn đích thị là món ăn khiến bạn nhớ mãi",
quantity: 78,
price: 63000,
image: "https://file.organica.vn/uploads/filecloud/2018/August/31/1318-554171535701440-1535701440.jpg",
category_id: 2,
classify: 1,
rate: 0
)

Product.create!(
name: "Thịt gà Bresse",
description: "Đặc sản của Bresse, Pháp. Thịt gà ngon, tuyệt hảo, thuộc đẳng cấp thế giới",
quantity: 150,
price: 110000,
image: "https://kenh14cdn.com/thumb_w/620/2017/1-1511983877177.jpg",
category_id: 3,
classify: 1,
rate: 0
)

Product.create!(
name: "Thịt gà Đông Tảo Việt Nam",
description: "Giống gà nổi tiếng từ thời xa xưa ở Việt Nam, thường được tiếng cống cho vua chúa. Chắc thịt, ngon dai, da săn giòn, ít hàm lượng mỡ.",
quantity: 300,
price: 1500000,
image: "http://huongsen.vn/wp-content/uploads/2017/04/ga-dong-tao-ham-thuoc-bac-3.jpg",
category_id: 3,
classify: 1,
rate: 0
)

Product.create!(
name: "Thịt gà Nagoya Cochin",
description: "Thịt gà xuất xứ từ Nhật Bản. Thịt ngon, đậm đà, chứa nhiều collagen tốt cho da và nhiều chất bổ dưỡng khác rất tốt cho sức khẻ.",
quantity: 600,
price: 1050000,
image: "https://www.3030.co.jp/upload/save_image/img_000000000061_1.jpg",
category_id: 3,
classify: 1,
rate: 0
)

Product.create!(
name: "Lẩu Tứ Xuyên",
description: "Được chế biến với 89 nguyên liệu khác nhau, người ăn cảm thấy cay nhưng không gây ảnh hưởng đến sức khỏe dạ dày",
quantity: 20,
price: 300000,
image: "http://imgs.vietnamnet.vn/Images/2015/09/09/10/20150909104105-1-2.jpg",
category_id: 4,
classify: 1,
rate: 0
)

Product.create!(
name: "Lẩu Tôm chua cay",
description: "Lẩu Tôm chua cay là món ăn khá dễ làm nhưng đòi hỏi thời gian chế biến. Nước dùng đậm đà, có vị chua chua, cay cay, tôm ngọt nước. ",
quantity: 40,
price: 200000,
image: "https://lh6.googleusercontent.com/b8Iq2VGhBxOf9_CdhSTfArqIBXPRvrs3ZfY8SpkBRjNyiPLWbMvvMRpsJQmjrxWmjTEgANDeBh5yN-evvg8oBi7fiE0sjQRkC_d6MIfMeWtmsvt1GS6ZZL6rxnmUKFEKB2T94CfL",
category_id: 4,
classify: 1,
rate: 0
)

Product.create!(
name: "Lẩu Udon Suki",
description: "Món lẩu của Nhật Bản. Sợi mì dai, mịn kết hợp nước lẩu đậm đà, thanh ngọt mang lại hương vị tuyệt vời.",
quantity: 35,
price: 200000,
image: "https://st.phunuonline.com.vn/staticFile/Subject/2017/05/24/lau-mi-1_241429818.png",
category_id: 4,
classify: 1,
rate: 0
)

Product.create!(
name: "Phở Bò",
description: "Ngon, dễ ăn, nóng hổi, rất thích hợp ăn vào buổi sáng.",
quantity: 50,
price: 20000,
image: "https://sanvemaybay.vn/includes/uploads/2015/01/nhung-mon-sup-noi-tieng-tren-the-gioi-1-357x500.jpg",
category_id: 5,
classify: 1,
rate: 0
)

Product.create!(
name: "Súp mì bò Đài Loan",
description: "Món ăn truyền thống Đài Loan.",
quantity: 34,
price: 35000,
image: "https://sanvemaybay.vn/includes/uploads/2015/01/nhung-mon-sup-noi-tieng-tren-the-gioi-2.jpg",
category_id: 5,
classify: 1,
rate: 0
)

Product.create!(
name: "Súp Ajaco",
description: "Món ăn nổi tiếng của Colombia, có hương vị phong phú.",
quantity: 60,
price: 40000,
image: "https://sanvemaybay.vn/includes/uploads/2015/01/nhung-mon-sup-noi-tieng-tren-the-gioi-5-343x500.jpg",
category_id: 5,
classify: 1,
rate: 0
)

Product.create!(
name: "Sushi cuộn dưa chuột",
description: "Món ăn đơn giản dễ làm, là món sushi hoàn hảo cho người ăn chay",
quantity: 80,
price: 40000,
image: "https://znews-photo.zadn.vn/w1024/Uploaded/jaroin/2017_11_03/KappaMaki.jpg",
category_id: 6,
classify: 1,
rate: 0
)

Product.create!(
name: "Sushi cuộn Alaska",
description: "Thành phần gồm cá hồi, cơm sushi, lá rong biển, bơ và thịt cua giả.",
quantity: 60,
price: 50000,
image: "https://znews-photo.zadn.vn/w1024/Uploaded/jaroin/2017_11_03/alaskanroll640x428.jpg",
category_id: 6,
classify: 1,
rate: 0
)

Product.create!(
name: "Sushi cá hồi",
description: "Là món ăn giàu protein và omega 3, nhiều vitamin D và ít chất béo. Thực phẩm tươi ngon.",
quantity: 75,
price: 65000,
image: "https://media.foody.vn/images/Blog_Kasen.jpg",
category_id: 6,
classify: 1,
rate: 0
)

Product.create!(
name: "Cá hồi",
description: "Thực phẩm tươi ngon, chứa nhiều vitamin D, omega 3 và giàu protein",
quantity: 500,
price: 350000,
image: "https://cdn.tgdd.vn/Files/2017/10/26/1036136/phan-biet-ca-hoi-dong-lanh-va-ca-hoi-tuoi-h2_800x400.jpg",
category_id: 7,
classify: 1,
rate: 0
)

Product.create!(
name: "Cua Hoàng đế",
description: "thịt ngon , chắc, gạch thơm béo và chứa nhiều chất dinh dưỡng.",
quantity: 800,
price: 2150000,
image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIXGQJ8IFMfXIgcM7J2HKx8O0S8Cbzd6UA9hJNptX8uhkk_in7Bw&s",
category_id: 7,
classify: 1,
rate: 0
)
Product.create!(
name: "Vi cá mập",
description: "Có chứa nhiều chất đạm, canxi, và collagen. Rất tốt cho xương và hệ tim mạch",
quantity: 300, 
price: 1300000,
image: "https://upload.wikimedia.org/wikipedia/commons/3/39/Chinese_cuisine-Shark_fin_soup-01.jpg",
category_id: 7,
classify: 1,
rate: 0
)

Product.create!(
name: "Heineken",
description: "một loại bia lager nhạt, có độ cồn 5%, được sản xuất tại Hà Lan",
quantity: 2000,
price: 21000,
image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRu5ZlXZ41ajgNlcBUKP6Jjx7_Eq-KK7CnuIuFU81fa0V7RZu8&s",
category_id: 8,
classify: 0,
rate: 0
)

Product.create!(
name: "Tiger Beer",
description: "Thương hiệu bia nổi tiếng của Singapore, được ưa chuộng bởi chất lượng cao mà giá thành thuộc loại tầm trung.",
quantity: 3000,
price: 15000,
image: "https://toplist.vn/images/800px/tiger-beer-75735.jpg",
category_id: 8,
classify: 0,
rate: 0
)

Product.create!(
name: "Bia Hà Nội",
description: "Bia rẻ nhưng chất lượng hảo hạng",
quantity: 5000,
price: 11000,
image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTU7-RwdJBCzFw3l3hs96lRZY0KkQ3DPEmCNX3KUkcPO6Ntv3qC&s",
category_id: 8,
classify: 0,
rate: 0
)

Product.create!(
name: "Koi Milk Tea",
description: "Loại trà sữa bắt nguồn từ Singapore, không quá ngọt, hơi thanh, đa dạng về hương vị.",
quantity: 650,
price: 50000,
image: "https://www.foodpanda.vn/wp-content/uploads/2018/10/tra-sua-koi.jpg",
category_id: 9,
classify: 0,
rate: 0
)

Product.create!(
name: "Trà sữa trân châu trắng",
description: " Trân châu trắng được làm từ bột rau câu dẻo, bột rau câu giòn, tạo hình thành các hạt tròn bé có màu trắng.",
quantity: 30,
price: 47000,
image: "https://jarvis.vn/uploaded/tra-sua-tran-chau-trang(2).jpg",
category_id: 9,
classify: 0,
rate: 0
)

Product.create!(
name: "Trà sữa Oreo Cake Cream",
description: "Hương vị tuyệt vời, có rất nhiều hương vị đa dạng, phong phú.",
quantity: 30,
price: 40000,
image: "https://jarvis.vn/uploaded/tra-sua-oreo-cake-cream(1).jpg",
category_id: 9,
classify: 0,
rate: 0
)

Product.create!(
name: "Sinh tố Bơ",
description: "Được làm từ trái bơ tươi, vừa chín tới, ngon, bổ dưỡng.",
quantity: 300,
price: 15000,
image: "https://danangz.vn/wp-content/uploads/2019/08/recipe744-635526155347256406-768x480.jpg",
category_id: 10,
classify: 0,
rate: 0
)

Product.create!(
name: "Sinh tố xoài",
description: "Vị chua ngọt, thơm ngon. Được lựa chọn cẩn thận về nguồn gốc cũng như chất lượng",
quantity: 450,
price: 10000,
image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQicazLYQ5i-GTtSXSEIFPY1YKmLrKxdNa_FgH_kKR2ki7KQlSCJQ&s",
category_id: 10,
classify: 0,
rate: 0
)

Product.create!(
name: "Sinh tố thập cẩm",
description: "Nhiều loại trái cây khác nhau tạo nên hương vị tuyệt vời",
quantity: 360,
price: 20000,
image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRy2AtqvDegPBjLq2XemxCcCfXnDkBg9TzslVFot1l60kLZJEGi0w&s",
category_id: 10,
classify: 0,
rate: 0
)

Product.create!(
name: "Trà Darjeeling",
description: "Trà đen cực nổi tiếng ở Ấn Độ bởi hương vị thơm ngon và đặc biệt",
quantity: 400,
price: 23000,
image: "http://phache.com.vn/upload/image/taste-of-darjeeling-tea.jpg",
category_id: 11,
classify: 0,
rate: 0
)

Product.create!(
name: "Trà Quan Âm",
description: "Đặc sản vùng Phúc Kiến, Trung Quốc. Hương vị đậm đà, dịu ngọt, có hương thơm tự nhiên",
quantity: 368,
price: 60000,
image: "https://afamilycdn.com/k:thumb_w/600/WV8iA0A8EAfajQ9tIqEEPbrc36AeNK/Image/2015/02/thiet-quan-am-5632c/3-loai-tra-noi-tieng-ve-ca-do-ngon-lan-muc-gia-khung.jpg",
category_id: 11,
classify: 0,
rate: 0
)

Product.create!(
name: "Trà Thái Nguyên",
description: "Trà nổi tiếng từ bao đời nay ở Việt Nam. Những búp trà được chế biến tỉ mỉ, hương vị thanh mát, dịu nhẹ và một chút đăng đắng tự nhiên.",
quantity: 700,
price: 12000,
image: "http://phache.com.vn/upload/image/che-thai-nguyen.jpg",
category_id: 11,
classify: 0,
rate: 0
)

Product.create!(
name: "Bloody Mary",
description: "cocktail cổ điển bao gồm vodka và nước ép cà chua là chủ yếu",
quantity: 340,
price: 45000,
image: "https://number1.com.vn/wp-content/uploads/2017/06/cocktail-karlssons-bloody-mary.jpeg",
category_id: 12,
classify: 0,
rate: 0
)

Product.create!(
name: "Mojito",
description: "Thành phần Rum nhẹ, bạc hà, và nước cốt chanh. Là thức uống hoàn hảo cho các kỳ nghỉ ở bãi biển",
quantity: 280,
price: 35000,
image: "https://number1.com.vn/wp-content/uploads/2017/06/Cocktail-Mojito.png",
category_id: 12,
classify: 0,
rate: 0
)

Product.create!(
name: "Old Fashined", 
description: "Là một trong các loại cocktail cổ điển nổi tiếng, Thành phần gồm Soda, bourbon và cam",
quantity: 280,
price: 60000,
image: "https://number1.com.vn/wp-content/uploads/2017/06/Cocktail-Old-Fashioned.jpg",
category_id: 12,
classify: 0,
rate: 0
)

Product.create!(
name: "Café Sữa",
description: "Ngon và béo ngậy, kết hợp thêm chút đá để có một ngày làm việc tỉnh táo",
quantity: 350,
price: 25000,
image: "https://epicure.vn/wp-content/uploads/2017/08/cafe-sua-da-768x512.jpg",
category_id: 13,
classify: 0,
rate: 0
)

Product.create!(
name: "Café đen",
description: "Không gì ngon hơn đậm đà và nguyên chất",
quantity: 480,
price: 20000,
image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtX4-yf7Ws0pur0jROQv4S84R8Yta7HbZIkxcbIfrTNCW7Gm1I&s",
category_id: 13,
classify: 0,
rate: 0
)

Product.create!(
name: "Espresso",
description: "Là loại cafe rất được ưa chuộng tại Ý và Tây Ban Nha; được pha bằng cách cho nước bị ép dưới áp suất cao chảy qua một lượng cafe được xay cực mịn.",
quantity: 100,
price: 30000,
image: "https://www.hoteljob.vn/files/Anh-HTJ-Hong/phan-biet-8-loai-thuc-uong-ca-phe-hot-nhat-hien-nay-2.jpg",
category_id: 13,
classify: 0,
rate: 0
)
Product.create!(
name: "Smoothie kem dừa kiểu Thái",
description: "Không quá đắng vị café mà chỉ là một chút hương thơm thoảng thoảng, kèm theo vị ngậy ngậy của dừa khô, sẽ đem đến cho bạn hương thơm thật mới lạ và cuốn hút đấy.",
quantity: 100,
price: 35000,
image: "https://nguyenlieuphache.com/wp-content/uploads/2017/01/2-13.jpg",
category_id: 10,
classify: 0,
rate: 0
)
250.times do
  comment = Faker::TvShows::Friends.quote 
  rate = rand(0..5)
  user_id = User.all[rand(0..49)].id
  product_id =  Product.all[rand(0..99)].id
  Review.create!(comment: comment, rate: rate, user_id: user_id, product_id: product_id)
end

products = Product.all
products.each do |product|
  avr_rate = product.average_rate
  product.update_attribute(:rate, avr_rate)
end