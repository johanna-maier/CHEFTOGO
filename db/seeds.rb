# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts 'Deleting current reviews, offers & users'
Review.destroy_all
Offer.destroy_all
User.destroy_all

puts 'Creating new offers'

# data['results'].each do |result|
#   title = result['title']
#   overview = result['overview']
#   rating = result['vote_average']
#   poster_url = "https://image.tmdb.org/t/p/original#{result['poster_path']}"
#   Movie.create(title: title, overview: overview, poster_url: poster_url, rating: rating)
# end

# Offer.destroy_all
# User.destroy_all
# Booking.destroy_all

offers = [
  {
    title: 'BBQ Cooking Evening',
    description: 'Enjoy one night of the best BBQ in town cooked by Dan.',
    long_description: "Time to get ready for those summer BBQs! With me, Chef Steven, you'll be eating some of the very best grilled food of your life! He uses preparation methods for various proteins (brining, dry rub, marinating) to ensure juicy, flavorful results. ",
    price: 500,
    number_of_people: 15,
    category: 'American',
    img_file_names: ['bbq-chef.jpg', 'bbq-chef-2.jpg', 'bbq-chef-3.jpg'],
    chef: {
      first_name: 'Dan',
      last_name: 'Smith',
      description: "Hi, my name is Dan! I'm a BBQ chef from Texas",
      email: 'dansmith@gmail.com',
      password: '123456'
    }
  },  {
    title: 'Parisian Delicacies',
    description: 'Experience the tastes of Paris with Raphaël.',
    long_description: "Learn how to bake these sweet French treats from scratch! Whether you're a novice or a seasoned baker, you'll learn all about what makes French Macarons special, how to make the perfect meringue, the best mixing technique, how to perfectly pipe the batter, all about what's happening in the oven, how to avoid common mistakes, and then some delicious fillings and decoration. Yup - we cover everything!",
    price: 150,
    number_of_people: 3,
    category: 'French',
    img_file_names: ['french-chef.jpg', 'french-chef-2.jpg', 'french-chef-3.jpg'],
    chef: {
      first_name: 'Raphaël',
      last_name: 'Dupont',
      description: "Hi, my name is Raphaël! I'm a chef from Paris.",
      email: 'raphdupont@gmail.com',
      password: '123456'
    }
  },  {
    title: 'Best Hamburgers Made for You!',
    description: 'Have a great hamburger feast with Stanley!',
    long_description: "Chef Stanley will prepare a modern formula for turning basic burgers into gourmet fare using lean ground beef topped with cheddar, Parmesan, wonton chips, and a Béarnaise sauce, all nestled into a warm toasted brioche bun. He will also prepare a side of patatas bravas and a spicy chili crema sauce to round out your feast.",
    price: 150,
    number_of_people: 5,
    category: 'American',
    img_file_names: ['hamburger-chef.jpg', 'hamburger-chef-2.jpg', 'hamburger-chef-3.jpg'],
    chef: {
      first_name: 'Stanley',
      last_name: 'Williams',
      description: "Hi, my name is Stanley! I'm a hamburger chef from New York.",
      email: 'stanleywilliams@gmail.com',
      password: '123456'
    }
  },  {
    title: 'Indian Culinary Experience',
    description: 'Enjoy one night of the best Indian food in town cooked by Ramesh Mehra.',
    long_description: "Welcome to our home in Jaipur, India. We are very excited to share our culture, traditions and the fine art of Indian cooking, following traditional recipes on this live session. We will travel together through the steps of each recipe & its history. ",
    price: 180,
    number_of_people: 5,
    category: 'Indian',
    img_file_names: ['indian-chef.jpg', 'indian-chef-2.jpg', 'indian-chef-3.jpg'],
    chef: {
      first_name: 'Ramesh',
      last_name: 'Mehra',
      description: "Hi, my name is Ramesh! I'm a chef from Jaipur.",
      email: 'rameshmehra@gmail.com',
      password: '123456'
    }
  },  {
    title: 'Handmade Cheesy Käsespätzle',
    description: 'Enjoy one night of the best Käsespätzle in town cooked by our crew.',
    long_description: "Cheese noodles are locally called 'Käsespätzle' and it is a typical Bavarian dish from the region of Munich. At the beginning of my cooking experience I talk about the history of the noodles called 'Käsespätzle' and I speak about the area in Bavaria where it is coming from. After the cooking session we will enjoy the delicious Käsespätzle together and we can have a nice conversation with a coffee or tea.",
    price: 210,
    number_of_people: 6,
    category: 'German',
    img_file_names: ['kaesespaetzle-chefs.jpg', 'kaesespaetzle-chefs-2.jpg', 'kaesespaetzle-chefs-3.jpg'],
    chef: {
      first_name: 'Ursula',
      last_name: 'Bayer',
      description: "Hi, my name is Ursula! I'm a Käsespätzle chef from Munich.",
      email: 'ursulabayer@gmail.com',
      password: '123456'
    }
  },  {
    title: 'Molecular Food Experience',
    description: 'Enjoy a night of molecular food magic with Haru.',
    long_description: "Molecular gastronomy is the scientific approach of nutrition from primarily the perspective of chemistry. The composition (molecular structure), properties (mass, viscosity, etc) and transformations (chemical reactions, reactant products) of an ingredient are addressed and utilized in the preparation and appreciation of the ingested products. It is a branch of food science that approaches the preparation and enjoyment of nutrition from the perspective of a scientist at the scale of atoms, molecules, and mixtures.",
    price: 370,
    number_of_people: 4,
    category: 'Japanese',
    img_file_names: ['molecular-cooking-chef.jpg', 'molecular-cooking-chef-2.jpg', 'molecular-cooking-chef-3.jpg'],
    chef: {
      first_name: 'Haru',
      last_name: 'Sato',
      description: "Hi, my name is Haru! I'm a molecular kitchen chef from Japan.",
      email: 'harusato@gmail.com',
      password: '123456'
    }
  },  {
    title: 'Authentic Italian Pasta',
    description: 'Enjoy one night of the Italian pasta in town cooked by Marco.',
    long_description: "Need to travel to Italy? Nonna will bring it to your table! Cook Pasta from scratch with Marco and his grandma, let them share with you their culinary secrets and the traditional authentic pasta technique. Listen to their stories and be ready to be involved in our community.",
    price: 240,
    number_of_people: 7,
    category: 'Italian',
    img_file_names: ['pasta-chef.jpg', 'pasta-chef-2.jpg', 'pasta-chef-3.jpg'],
    chef: {
      first_name: 'Marco',
      last_name: 'Mazza',
      description: "Hi, my name is Marco! I'm an Italian chef from Sicily.",
      email: 'marcomazza@gmail.com',
      password: '123456'
    }
  },  {
    title: 'Steak Evening',
    description: 'Enjoy one night of the best steak in town cooked by Thomas.',
    long_description: "In our 100+ year old house you will learn step by step how to prepare your first ASADO AMERICANO ( Barbecue). We will teach you how to clean, cut and portion different types of meat to cook on the exclusive PARRILLA - the grill. With the personal secrets we will share, you will also learn how to season it preparing the famous and infallible CHIMICHURRI SAUCE (While we make this introduction you will try the typical CHORIPAN).",
    price: 160,
    number_of_people: 3,
    category: 'American',
    img_file_names: ['steak-chef.jpg', 'steak-chef-2.jpg', 'steak-chef-3.jpg'],
    chef: {
      first_name: 'Thomas',
      last_name: 'Williams',
      description: "Hi, my name is Thomas! I'm a steak chef from Brooklyn.",
      email: 'thomaswilliams@gmail.com',
      password: '123456'
    }
  },  {
    title: 'Sushi Live Cooking',
    description: 'Enjoy one night of the best  sushi in town prepared by Jiro.',
    long_description: "You might think Sushi is made of rice and fish. However it is a perfect dish for vegans. We can make variety kinds of fancy looking Sushi with vegetables, tofu and plant based ingredients without using a single fish products. I will guide you to make some of the sushi rolls which is not too difficult to make for the beginners and also vegan osuimono / clear soup which perfectly matches with sushi.",
    price: 220,
    number_of_people: 4,
    category: 'Japanese',
    img_file_names: ['sushi-chef.jpg', 'sushi-chef-2.jpg', 'sushi-chef-3.jpg'],
    chef: {
      first_name: 'Jiro',
      last_name: 'Ono',
      description: "Hi, my name is Jiro! I'm a sushi chef from Tokyo.",
      email: 'jiroono@gmail.com',
      password: '123456'
    }
  },  {
    title: 'Vegan Cooking Evening',
    description: 'Enjoy one night of the best vegan food in town cooked by James.',
    long_description: "The menu will be Korean food, which is originally non-vegan—so, as a vegan cook, you have to consider substitutes that don't contain animal products. By considering all the ingredients you've never deeply considered before, you can find the philosophy of veganism and about where ingredients come from. After cooking, we're going to eat the food we made, and have time to talk about veganism and being vegan. You can also ask me how to live as a vegan in Korea.",
    price: 150,
    number_of_people: 5,
    category: 'Vegan',
    img_file_names: ['vegan-chef.jpg', 'vegan-chef-2.jpg', 'vegan-chef-3.jpg'],
    chef: {
      first_name: 'James',
      last_name: 'Hoot',
      description: "Hi, my name is James! I'm a vegan chef from California.",
      email: 'jameshoot@gmail.com',
      password: '123456'
    }
  },  {
    title: 'Vietnamese Cooking Evening',
    description: 'Enjoy one night of the best Vietnamese food in town cooked by Tway.',
    long_description: "You are often familiar with Vietnamese food nowadays, but have you ever wondering how the real local Vietnamese cook their meal everyday? This experience will take you to a Vietnamese family and enjoy making the food with the local in a simple but really tasty.
",
    price: 180,
    number_of_people: 6,
    category: 'Vietnamese',
    img_file_names: ['vietnamese-chef.jpg', 'vietnamese-chef-2.jpg', 'vietnamese-chef-3.jpg'],
    chef: {
      first_name: 'Tway',
      last_name: 'Nguyen',
      description: "Hi, my name is Tway! I'm a Vietnamese chef from Hanoi.",
      email: 'twaynguyen@gmail.com',
      password: '123456'
    }
  }

]

# # Cloudinary Image Info
# resource_type = "image"
# type = "upload"
# version = 1234567890
# format = "jpg"

offers.each_with_index do |offer, index|
  puts "Seed user & offer (#{index + 1}/#{offers.length})"
  puts 'Creating user'
  seed_user = User.new(
    first_name: offer[:chef][:first_name],
    last_name: offer[:chef][:last_name],
    description: offer[:chef][:description],
    email: offer[:chef][:email],
    password: offer[:chef][:password]
  )
  seed_user.avatar_photo.attach(io: File.open("app/assets/images/#{offer[:img_file_names][0]}"), filename: offer[:img_file_names][0], content_type: 'image/jpg')
  seed_user.save!

  # puts 'Cloudinary Image Info ID'
  # signature = Cloudinary::Utils.api_sign_request({public_id: offer[:public_id],
  # version: version}, Cloudinary.config.api_secret)
  # puts signature
  # photo = "#{resource_type}/#{type}/v#{version}/#{offer[:public_id]}.#{format}##{signature}"

  # photo = URI.open('https://res.cloudinary.com/johanna/image/upload/v1651183620/bbq-chef_rerz3x.jpg')

  puts 'Creating offer'
  seed_offer = Offer.new(
    title: offer[:title],
    description: "#{offer[:description]} #{offer[:long_description]}",
    price: offer[:price],
    number_of_people: offer[:number_of_people], category: offer[:category]
  )
  puts 'Associating offer and image'

  offer[:img_file_names].each do |img_file|
    seed_offer.photos.attach(io: File.open("app/assets/images/#{img_file}"), filename: img_file, content_type: 'image/jpg')
  end

  puts 'Associating offer and user'
  seed_offer.user = seed_user
  puts 'Saving offer'
  puts ''
  seed_offer.save!
end

puts 'Seeded offers & chefs'
puts ''
puts 'Creating new users who want to book'

users = [
    {
      first_name: 'Johanna',
      last_name: 'Maier',
      description: "Hi, my name is Johanna! I want to book a chef.",
      email: 'johanna@gmail.com',
      password: '123456',
      img_file: 'johanna-profile.jpg'
    },
    {
      first_name: 'Anjali',
      last_name: 'Kumar',
      description: "Hi, my name is Anjali! I want to book a chef.",
      email: 'anjali@gmail.com',
      password: '123456',
      img_file: 'anjali-profile.jpg'
    },
    {
      first_name: 'Alexandra',
      last_name: 'Stroe',
      description: "Hi, my name is Alexandra! I want to book a chef.",
      email: 'alexandra@gmail.com',
      password: '123456',
      img_file: 'alexandra-profile.jpg'
    },
    {
      first_name: 'Ieva',
      last_name: 'Jirgensone',
      description: "Hi, my name is Ieva! I want to book a chef.",
      email: 'ieva@gmail.com',
      password: '123456',
      img_file: 'ieva-profile.jpg'
    }
]

users.each_with_index do |user, index|
  puts "Seed users for booking (#{index + 1}/#{users.length})"

  seed_user = User.new(
    first_name: user[:first_name],
    last_name: user[:last_name],
    description: user[:description],
    email: user[:email],
    password: user[:password]
  )
  seed_user.avatar_photo.attach(io: File.open("app/assets/images/#{user[:img_file]}"), filename: user[:img_file], content_type: 'image/jpg')
  seed_user.save!
end
