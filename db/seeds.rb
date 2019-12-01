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
      name: "Legend Coffee",
      description: "Đẳng cấp doanh nhân ", 
      quantity:  9,
      price: 10000000, 
      image: "https://media.metrip.vn/res/g5/42053/prof/s828x600/foody-mobile-dfkjdrfjdjdjdhjd-jpg-697-636383004240742318.jpg",
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
name: "Cá hồi sốt đậu nành + beef steak",
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
name: "Hotdog Bamy",
description: "béo nhưng không ngấy",
quantity: 100  ,
price: 50000, 
image: "https://images.foody.vn/res/g15/147810/prof/s576x330/foody-mobile-hd1-jpg-310-635917357862108564.jpg ",
category_id:   4,
classify: 1,
rate: 0
)
Product.create!(
name: "YouOne Hotdog",
description: "hương vị quyen thuộc",
quantity: 100  ,
price: 20000 ,
image: "https://images.foody.vn/res/g79/786675/prof/s576x330/foody-upload-api-foody-mobile-hot-m-jpg-181012161020.jpg  ",
category_id:   4,
classify: 1,
rate: 0
)
Product.create!(
name: "Phô Mai Xinh - HotDog",
description: "ăn và cảm nhận hương vị béo ngậy từ phô mai",
quantity: 100  ,
price: 60000 ,
image: "https://images.foody.vn/res/g94/935804/prof/s576x330/foody-upload-api-foody-mobile-hd-190703162910.jpg  ",
category_id:   4,
classify: 1,
rate: 0
)


Product.create!(
name: "Khoắng Nướng - Soup Cua Sài Gòn",
description: " không chỉ là ngon",
quantity: 100  ,
price: 159000 ,
image: "https://images.foody.vn/res/g92/917065/prof/s576x330/foody-upload-api-foody-mobile-sup-190515154202.jpg  ",
category_id:   5,
classify: 1,
rate: 0
)
Product.create!(
name: "Vietnamese Beef Noodle Soup",
description: " hương vị việt nam",
quantity: 100  ,
price: 60000 ,
image: "https://images.foody.vn/res/g64/638025/prof/s576x330/foody-mobile-12-jpg-123-636245617749825020.jpg   ",
category_id:   5,
classify: 1,
rate: 0
)
Product.create!(
name: "Cháo Dinh Dưỡng Việt Soup",
description: " giúp bé ăn ngon",
quantity: 100  ,
price: 30000 ,
image: "https://images.foody.vn/res/g97/964459/prof/s576x330/foody-upload-api-foody-mobile-z1549424653076_0de4a-191002204751.jpg  ",
category_id:   5,
classify: 1,
rate: 0
)


Product.create!(
name: "Sushi Garden",
description: " hương vị nhật bản",
quantity: 100  ,
price: 150000,
image: "https://images.foody.vn/res/g70/694024/s180x180/foody-sushi-garden-887-636514797514608926.jpg   ",
category_id:   6,
classify: 1,
rate: 0
)
Product.create!(
name: "Sushi Nhật Bản Aozora",
description: " sushi quá tuyệt vời cho gia đình tôi mọi người ",
quantity: 100  ,
price: 319000 ,
image: "https://images.foody.vn/res/g1/6616/s180x180/foody-aozora-247-636661817766184363.jpg  ",
category_id:   6,
classify: 1,
rate: 0
)
Product.create!(
name: "Sushi Việt - Tô Hiệu",
description: " Quán sushi giá sinh viênchất lượng rất ổn, đáng thử và quay lại.",
quantity: 100  ,
price: 30000 ,
image: "https://images.foody.vn/res/g25/246327/s180x180/foody-sushi-viet-938-636275745556789560.jpg   ",
category_id:   6, 
classify: 1,
rate: 0
)


Product.create!(
name: "Xuân Seafood - Hải Sản Các Loại",
description: " hàng tương ngon, không tươi không lấy tiền",
quantity: 100  ,
price: 450000 ,
image: "https://images.foody.vn/res/g80/791983/prof/s576x330/foody-upload-api-foody-mobile-xuan-jpg-181031113641.jpg  ",
category_id:   7,
classify: 1,
rate: 0
)
Product.create!(
name: "Sea Fire Salt",
description: " Luôn luôn tươi ngon ",
quantity: 100  ,
price: 590000 ,
image:"https://media-cdn.tripadvisor.com/media/photo-s/16/a0/b8/5b/signature-grilled-surf.jpg ",
category_id:   7,
classify: 1,
rate: 0
)
Product.create!(
name: "Nam Sang Seafood Restaurant ",
description: " chọn ngay chế biến ngay ",
quantity: 100  ,
price: 1000000,
image:"https://media-cdn.tripadvisor.com/media/photo-s/0a/3e/00/06/yummy-clams-sauteed-with.jpg  ",
category_id:   7,
classify: 1,
rate: 0
)
Product.create!(
name: "Vuvuzela Beer Club ",
description: " Không gian sạch sẽ.phục vụ nhiệt tình",
quantity: 100  ,
price: 550000,
image:"https://images.foody.vn/res/g5/42816/prof/s576x330/foody-mobile-hdt-jpg-719-635817355445350267.jpg ",
category_id:   8,
classify: 0,
rate: 0
)
Product.create!(
name: "Beer Club ",
description: " không gian cho sự thư giãn ",
quantity: 100  ,
price: 500000,
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
name: "Loly Milk Tea & Coffee",
description: " luôn làm khách hàng hài lòng",
quantity: 100  ,
price: 45000,
image:"https://images.foody.vn/res/g74/733236/prof/s576x330/foody-upload-api-foody-mobile-2-jpg-180416102816.jpg ",
category_id:   9,
classify: 0,
rate: 0
)
Product.create!(
name: "Royal Milk Tea & Coffee",
description: " giá cả hợp lý",
quantity: 100  ,
price: 60000,
image:"https://images.foody.vn/res/g91/902402/prof/s576x330/foody-upload-api-foody-mobile-foody-upload-api-foo-190405135346.jpg ",
category_id:   9,
classify: 0,
rate: 0
)
Product.create!(
name: "Smoothies & Juices",
description: " hoa quả tươi ngon",
quantity: 100  ,
price: 55000,
image:"https://images.foody.vn/res/g3/28773/prof/s576x330/foody-upload-api-foody-mobile-smoothie-jpg-180822140836.jpg ",
category_id:   10,
classify: 0,
rate: 0
)
Product.create!(
name: "DN - Juices & Smoothies",
description: " luôn luôn tươi ngon",
quantity: 100  ,
price: 40000,
image:"https://images.foody.vn/res/g25/247033/prof/s576x330/foody-upload-api-foody-mobile-dn-fruits-190109133644.jpg ",
category_id:   10,
classify: 0,
rate: 0
)
Product.create!(
name: "Lylagua - Coffee, Smoothies & Juices",
description: " không gian thư giãn",
quantity: 100  ,
price: 50000,
image:"https://images.foody.vn/res/g68/678425/prof/s576x330/foody-mobile-719-jpg-509-636371786570479612.jpg",
category_id:   10,
classify: 0,
rate: 0
)
Product.create!(
name: "Toast 'n Tea Cafe & Food",
description: "không gian thư giãn",
quantity: 100  ,
price: 50000,
image:"https://images.foody.vn/res/g12/116070/prof/s576x330/foody-mobile-tt3-jpg-982-635739512286102577.jpg",
category_id:   11,
classify: 0,
rate: 0
)
Product.create!(
name: "Jouri Dessert & Tea",
description: " xích lại gần nhau thêm",
quantity: 100  ,
price: 60000,
image:"https://images.foody.vn/res/g22/215256/prof/s576x330/foody-upload-api-foody-mobile-7-jpg-181009102742.jpg",
category_id:   11,
classify: 0,

rate: 0
)
200.times do
  comment = Faker::TvShows::Friends.quote 
  rate = rand(0..5)
  user_id = User.all[rand(0..49)].id
  product_id =  Product.all[rand(0..59)].id
  Review.create!(comment: comment, rate: rate, user_id: user_id, product_id: product_id)
end

products = Product.all
products.each do |product|
  avr_rate = product.average_rate
  product.update_attribute(:rate, avr_rate)
end