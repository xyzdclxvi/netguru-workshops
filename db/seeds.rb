#admin - login: admin@adm.in, password: passpass
User.create(email: 'admin@adm.in', firstname: 'Admiral', lastname: 'In',  password: 'passpass', admin: true)

#regular users
user_list = [
  [ 'john@smi.th', 'John', 'Smith', 'passpass' ],
  [ 'michael@jack.son', 'Michael', 'Jackson', 'passpass' ],
  [ 'generic@na.me', 'Generic', 'Name', 'passpass' ],
  [ 'yeti@m.an', 'Yeti', 'Man', 'passpass' ],
  [ 'angry@gob.lin', 'Angry', 'Goblin', 'passpass' ]
]

user_list.each do |email, firstname, lastname, password|
  User.create(email: email, firstname: firstname, lastname: lastname, password: password)
end

#categories
category_list = [
  [ 'Winter Gear' ],
  [ 'Vacation Packages' ],
  [ 'Outdated Products' ]
]

category_list.each do |name|
  Category.create(name: name)
end

#products
product_list = [
  [ 'Mountaineer Snowshoes', 'john@smi.th', 'Winter Gear', '19.99', 'Access the backcountry easily with the Mountaineer. The ultra-precise binding and snow-shredding crampon give the Mountaineer the go-anywhere, do-anything versatility you need to reach for the peaks or explore uncharted territory.' ],
  [ '1906 Series Boundary Peak Snowshoes', 'john@smi.th', 'Winter Gear', '39.99', 'Established in 1906, Tubbs Snowshoes have carried hikers across snow-covered trails for over a century. While our company has grown, and our technology has advanced, our foundation remains rooted in the snowshoeing community. With inspiration from our heritage, the 1906 Series combines simple materials and modern technology, showcasing quality craftsmanship for wherever your next adventure leads.' ],
  [ '2 Part Snowshoe Poles', 'john@smi.th', 'Winter Gear', '13.37', 'Adjustable-length poles lend added security and stability on uneven, steep, or icy terrain, and they can turn an outing into a total body fitness workout! Lightweight 6000 Series aluminum and a carbon steel tip provide durability for varied terrain.' ],
  [ 'Snowshoe Pack', 'john@smi.th', 'Winter Gear', '4.99', 'Adjustable shoulder straps hold this anatomically-designed pack snug against your back for hands-free movement and easy access. A grab-and-go side handle lets you transport your gear in one hand.' ],
  [ 'Magnum Opus Skiis', 'michael@jack.son', 'Winter Gear', '89.99', "With the new super-light and nimble construction, you'll find yourself floating freely through the deepest powder, not hindered by unnecessary weight found in other heavier skis of this width category. Paired well with the SNOWSHOES, the Magnum Opus design keeps effort to a minimum and enjoyment to a maximum!" ],
  [ 'Ultracraft Snowboard', 'michael@jack.son', 'Winter Gear', '89.99', 'Jones took the most versatile powder board on the market and made it even better by adding Ultra construction to create the Ultracraft Snowboard. Its ingenious design allows it to float effortlessly in nipple-deep snow, yet still carve up hardpack, and the added Ultra construction makes it lighter and more responsive than the Hovercraft.' ],
  [ 'Hilleberg Winter Tent', 'generic@na.me', 'Winter Gear', '44.99', 'The Hilleberg Jannu is the panacea for worst-conditions mountaineering and alpine climbing. Due to its fast setup, bombproof storm protection and low weight (6 lb. 1 oz.), the Jannu is our highest rated self-supporting dome tent. We highly recommend it for high altitude alpine climbing and mountaineering.' ],
  [ 'SKI TOWN Ski Logging', 'michael@jack.son', 'Vacation Packages', '399.99', 'Save 25% or more on lodging and lift tickets - stay longer, save more! Minimum 8 nights lodging and 6 days lifts required for all guests. Available for stays November 26th, 2015 - April 10th, 2016. Includes Ski Valet Service at base of Gondola.' ],
  [ 'Mountainshoe Logging', 'john@smi.th', 'Vacation Packages', '349.99', 'Save 26% or more on lodging and lift tickets - stay longer, save more! Minimum 7 nights lodging and 6 days lifts required for all guests. Available for stays November 26th, 2015 - April 9th, 2016. Includes Shoes Valet Service at base of Gondola.' ],
  [ 'River Ride', 'admin@adm.in', 'Vacation Packages', '199.99', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse eget vestibulum lorem. Fusce condimentum dolor ac justo posuere, ut pulvinar libero commodo. Curabitur risus est, finibus at tortor sed, blandit malesuada magna. Duis ornare posuere justo, et viverra eros dictum sed. Suspendisse potenti.' ]
]

product_list.each do |title, user_email, category_name, price, description|
  User.find_by(email: user_email).products.create(title: title, description: description, price: price, category: Category.find_by(name: category_name))
end

#reviews
review_list = [
  [ 'john@smi.th', 'Magnum Opus Skiis', '3', 'OK but mountain shoes are better.' ],
  [ 'john@smi.th', 'Ultracraft Snowboard', '3', 'OK but mountain shoes are better.' ],
  [ 'john@smi.th', 'Hilleberg Winter Tent', '3', 'I sell mountain shoes and mountain shoes accessories.' ],
  [ 'john@smi.th', 'SKI TOWN Ski Logging', '2', 'I\'d rather be walking.' ],
  [ 'john@smi.th', 'Mountainshoe Logging', '5', 'Best thing ever.' ],
  [ 'john@smi.th', 'River Ride', '4', 'Better than expected.' ],
  [ 'john@smi.th', '1906 Series Boundary Peak Snowshoes', '5', 'My favorite.' ],
  [ 'michael@jack.son', 'Mountaineer Snowshoes', '2', 'Nothing like real shoes.' ],
  [ 'michael@jack.son', 'River Ride', '5', 'Exciting.' ],
  [ 'generic@na.me', 'Mountaineer Snowshoes', '3', 'It works.' ],
  [ 'generic@na.me', 'Hilleberg Winter Tent', '5', 'It\'s a tent.' ],
  [ 'angry@gob.lin', 'SKI TOWN Ski Logging', '5', 'I like.' ],
  [ 'angry@gob.lin', 'Mountaineer Snowshoes', '1', 'No fit.' ],
  [ 'angry@gob.lin', 'Magnum Opus Skiis', '1', 'I\'m goblin.' ],
  [ 'angry@gob.lin', 'Hillberg Winter Tent', '2', 'Too large.' ],
]

review_list.each do |user_email, product_title, rating, content|
  User.find_by(email: user_email).reviews.create(rating: rating, content: content, product: Product.find_by(title: product_title))
end
