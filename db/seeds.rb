# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"


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
    price: 500,
    number_of_people: 15,
    category: 'American',
    img_file_name: 'bbq-chef.jpg',
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
    price: 150,
    number_of_people: 3,
    category: 'French',
    img_file_name: 'french-chef.jpg',
    chef: {
      first_name: 'Raphaël',
      last_name: 'Dupont',
      description: "Hi, my name is Raphaël! I'm a chef from Paris",
      email: 'raphdupont@gmail.com',
      password: '123456'
    }
  },  {
    title: 'Best Hamburgers Made for You!',
    description: 'Have a great hamburger feast with Stanley!',
    price: 150,
    number_of_people: 5,
    category: 'American',
    img_file_name: 'hamburger-chef.jpg',
    chef: {
      first_name: 'Stanley',
      last_name: 'Williams',
      description: "Hi, my name is Stanley! I'm a hamburger chef from New York",
      email: 'stanleywilliams@gmail.com',
      password: '123456'
    }
  },  {
    title: 'Indian Culinary Experience',
    description: 'Enjoy one night of the best Indian food in town cooked by Ramesh Mehra.',
    price: 180,
    number_of_people: 5,
    category: 'Indian',
    img_file_name: 'indian-chef.jpg',
    chef: {
      first_name: 'Ramesh',
      last_name: 'Mehra',
      description: "Hi, my name is Ramesh! I'm a chef from New Dehli",
      email: 'rameshmehra@gmail.com',
      password: '123456'
    }
  },  {
    title: 'Handmade Cheesy Käsespätzle',
    description: 'Enjoy one night of the best Käsespätzle in town cooked by our crew.',
    price: 210,
    number_of_people: 6,
    category: 'German',
    img_file_name: 'kaesespaetzle-chefs.jpg',
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
    price: 370,
    number_of_people: 4,
    category: 'Japanese',
    img_file_name: 'molecular-cooking-chef.jpg',
    chef: {
      first_name: 'Haru',
      last_name: 'Sato',
      description: "Hi, my name is Haru! I'm a molecular kitchen chef from Japan",
      email: 'harusato@gmail.com',
      password: '123456'
    }
  },  {
    title: 'Authentic Italian Pasta',
    description: 'Enjoy one night of the Italian pasta in town cooked by Marco.',
    price: 240,
    number_of_people: 7,
    category: 'Italian',
    img_file_name: 'pasta-chef.jpg',
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
    price: 160,
    number_of_people: 3,
    category: 'American',
    img_file_name: 'steak-chef.jpg',
    chef: {
      first_name: 'Thomas',
      last_name: 'Williams',
      description: "Hi, my name is Thomas! I'm a steak chef from Brooklyn",
      email: 'thomaswilliams@gmail.com',
      password: '123456'
    }
  },  {
    title: 'Sushi Live Cooking',
    description: 'Enjoy one night of the best BBQ in town cooked by Jiro.',
    price: 220,
    number_of_people: 4,
    category: 'Japanese',
    img_file_name: 'sushi-chef.jpg',
    chef: {
      first_name: 'Jiro',
      last_name: 'Ono',
      description: "Hi, my name is Jiro! I'm a sushi chef from Tokyo",
      email: 'jiroono@gmail.com',
      password: '123456'
    }
  },  {
    title: 'Vegan Cooking Evening',
    description: 'Enjoy one night of the best vegan food in town cooked by James.',
    price: 150,
    number_of_people: 5,
    category: 'Vegan',
    img_file_name: 'vegan-chef.jpg',
    chef: {
      first_name: 'James',
      last_name: 'Hoot',
      description: "Hi, my name is James! I'm a vegan chef from California",
      email: 'jameshoot@gmail.com',
      password: '123456'
    }
  },  {
    title: 'Vietnamese Cooking Evening',
    description: 'Enjoy one night of the best Vietnamese food in town cooked by Tway.',
    price: 180,
    number_of_people: 6,
    category: 'Vietnamese',
    img_file_name: 'vietnamese-chef.jpg',
    chef: {
      first_name: 'Tway',
      last_name: 'Nguyen',
      description: "Hi, my name is Tway! I'm a Vietnamese chef from Hanoi",
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
  seed_user.save!

  # puts 'Cloudinary Image Info ID'
  # signature = Cloudinary::Utils.api_sign_request({public_id: offer[:public_id],
  # version: version}, Cloudinary.config.api_secret)
  # puts signature
  # photo = "#{resource_type}/#{type}/v#{version}/#{offer[:public_id]}.#{format}##{signature}"

  # photo = URI.open('https://res.cloudinary.com/johanna/image/upload/v1651183620/bbq-chef_rerz3x.jpg')

  puts 'Creating offer'
  seed_offer = Offer.new(
    title: offer[:title], description: offer[:description], price: offer[:price],
    number_of_people: offer[:number_of_people], category: offer[:category]
  )
  puts 'Associating offer and image'

  seed_offer.photo.attach(io: File.open("app/assets/images/#{offer[:img_file_name]}"), filename: offer[:img_file_name], content_type: 'image/jpg')
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
      password: '123456'
    },
    {
      first_name: 'Anjali',
      last_name: 'Kumar',
      description: "Hi, my name is Anjali! I want to book a chef.",
      email: 'anjali@gmail.com',
      password: '123456'
    },
    {
      first_name: 'Alexandra',
      last_name: 'Stroe',
      description: "Hi, my name is Alexandra! I want to book a chef.",
      email: 'alexandra@gmail.com',
      password: '123456'
    },
    {
      first_name: 'Ieva',
      last_name: 'Jirgensone',
      description: "Hi, my name is Ieva! I want to book a chef.",
      email: 'ieva@gmail.com',
      password: '123456'
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
  seed_user.save!
end
