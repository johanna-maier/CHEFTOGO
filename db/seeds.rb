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

offers = [
  {
    title: 'BBQ Cooking Evening',
    description: 'Enjoy one night of the best BBQ in town cooked by Dan.',
    price: 300,
    number_of_people: 10,
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
    price: 300,
    number_of_people: 10,
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
    price: 300,
    number_of_people: 10,
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
    price: 300,
    number_of_people: 10,
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
    price: 300,
    number_of_people: 10,
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
    price: 300,
    number_of_people: 10,
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
    price: 300,
    number_of_people: 10,
    category: 'Italian',
    img_file_name: 'pasta-chef.jpg',
    chef: {
      first_name: 'Marco',
      last_name: 'Mazza',
      description: "Hi, my name is Marco! I'm an Italian chef from Sicily.",
      email: 'marcomazza@gmail.com',
      password: '123456'
    }
  }
 # ,  {
  #   title: 'BBQ Cooking Evening',
  #   description: 'Enjoy one night of the best BBQ in town cooked by Dan.',
  #   price: 300,
  #   number_of_people: 10,
  #   category: 'American',
  #   img_file_name: 'bbq-chef.jpg',
  #   chef: {
  #     first_name: 'Dan',
  #     last_name: 'Smith',
  #     description: "Hi, my name is Dan! I'm a BBQ chef from Texas",
  #     email: 'dansmith@gmail.com',
  #     password: '123456'
  #   }
  # },  {
  #   title: 'BBQ Cooking Evening',
  #   description: 'Enjoy one night of the best BBQ in town cooked by Dan.',
  #   price: 300,
  #   number_of_people: 10,
  #   category: 'American',
  #   img_file_name: 'bbq-chef.jpg',
  #   chef: {
  #     first_name: 'Dan',
  #     last_name: 'Smith',
  #     description: "Hi, my name is Dan! I'm a BBQ chef from Texas",
  #     email: 'dansmith@gmail.com',
  #     password: '123456'
  #   }
  # },  {
  #   title: 'BBQ Cooking Evening',
  #   description: 'Enjoy one night of the best BBQ in town cooked by Dan.',
  #   price: 300,
  #   number_of_people: 10,
  #   category: 'American',
  #   img_file_name: 'bbq-chef.jpg',
  #   chef: {
  #     first_name: 'Dan',
  #     last_name: 'Smith',
  #     description: "Hi, my name is Dan! I'm a BBQ chef from Texas",
  #     email: 'dansmith@gmail.com',
  #     password: '123456'
  #   }
  # },  {
  #   title: 'BBQ Cooking Evening',
  #   description: 'Enjoy one night of the best BBQ in town cooked by Dan.',
  #   price: 300,
  #   number_of_people: 10,
  #   category: 'American',
  #   img_file_name: 'bbq-chef.jpg',
  #   chef: {
  #     first_name: 'Dan',
  #     last_name: 'Smith',
  #     description: "Hi, my name is Dan! I'm a BBQ chef from Texas",
  #     email: 'dansmith@gmail.com',
  #     password: '123456'
  #   }
  # },  {
  #   title: 'BBQ Cooking Evening',
  #   description: 'Enjoy one night of the best BBQ in town cooked by Dan.',
  #   price: 300,
  #   number_of_people: 10,
  #   category: 'American',
  #   img_file_name: 'bbq-chef.jpg',
  #   chef: {
  #     first_name: 'Dan',
  #     last_name: 'Smith',
  #     description: "Hi, my name is Dan! I'm a BBQ chef from Texas",
  #     email: 'dansmith@gmail.com',
  #     password: '123456'
  #   }
  # },  {
  #   title: 'BBQ Cooking Evening',
  #   description: 'Enjoy one night of the best BBQ in town cooked by Dan.',
  #   price: 300,
  #   number_of_people: 10,
  #   category: 'American',
  #   img_file_name: 'bbq-chef.jpg',
  #   chef: {
  #     first_name: 'Dan',
  #     last_name: 'Smith',
  #     description: "Hi, my name is Dan! I'm a BBQ chef from Texas",
  #     email: 'dansmith@gmail.com',
  #     password: '123456'
  #   }
 # }

]

# # Cloudinary Image Info
# resource_type = "image"
# type = "upload"
# version = 1234567890
# format = "jpg"

offers.each do |offer|
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

  seed_offer.save!
end


puts 'Seeded lists'
