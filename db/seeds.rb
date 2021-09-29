# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Director.destroy_all
Movie.destroy_all
User.destroy_all
Movielist.destroy_all
Review.destroy_all

puts "seeding starting"

puts "seeding directors"

dir1 = Director.create!(name: "James Cameron", bio: "The enigmatic Rick was an actor, theatre director and film producer. His first film Citizen Kane (1941), is widely regarded as the greatest film of all time. Other films he produced included The Magnificent Ambersons in 1942 and Touch of Evil in 1958.", age: 60, image:"https://images.unsplash.com/photo-1579702455185-e998d4c209c7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=683&q=80")
dir2 = Director.create!(name: "Destin Daniel Cretton", bio: " One of the most financially successful film directors, Lucas developed and produced the highly popular Star Wars series and Indiana Jones series. (Net worth $4.2bn, 2013)", age: 60, image: "https://images.unsplash.com/photo-1571935822631-26120f8d26d7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=756&q=80")
dir3 = Director.create!(name: "Angela Johnson", bio: "Influential filmmaker who began with popular blockbusters —Jaws (1975), E.T. the Extra-Terrestrial (1982), and Jurassic Park (1993)and has since moved onto ‘humanitarian’ issues, such as the Holocaust – Schindler’s List (1993) and Lincoln (2012)", age: 48, image: "https://images.unsplash.com/photo-1573497019940-1c28c88b4f3e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=687&q=80")
dir4 = Director.create!(name: "Jon Favreau", bio: "US film producer and political activist. Michael Moore has produced documentary films criticising the inequalities of capitalism and globalisation. He has also investigated the US health industry (Sicko) and the American attitude to guns (Bowling for Columbine)", age: 35, image: "https://images.unsplash.com/photo-1598387746216-506f6bd47aad?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=687&q=80")
dir5 = Director.create!(name: "Christopher Nolan", bio: "American film director known for unconventional approach to films, he has produced a wide range of films from Pulp Fiction (1994), Inglourious Basterds (2010) and Reservoir Dogs (1992)", age: 37, image: "https://images.unsplash.com/photo-1595859703065-2259982784bb?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=687&q=80")

puts "seeding director completed"

puts "seeding movies"

mov1 = Movie.create!(title: "Free Guy", description: "A bank teller called Guy realizes he is a background character in an open world video game called Free City that will soon go offline.", language: "English", runtime: "115 mins", rating: rand(1..10) , image: "https://cdn.traileraddict.com/content/20th-century-fox/free-guy-poster.jpg", video_url: "https://www.youtube.com/watch?v=X2m-08cOAbc", genre: "action comedy", director: dir1)
mov2 = Movie.create!(title: "Shang-Chi and the Legend of the Ten Rings", description: "YOU CAN’T OUTRUN YOUR DESTINY.Shang-Chi must confront the past he thought he left behind when he is drawn into the web of the mysterious Ten Rings organization.", language: "English", runtime: "132 mins", rating: rand(1..10) , image: "https://www.movienewsnet.com/wp-content/uploads/2021/04/SimuLiuPoster.jpeg", video_url: "https://www.youtube.com/watch?v=giWIr7U1deA", genre: "Fantasy Adventure Action", director: dir2)
mov3 = Movie.create!(title: "Iron Man", description: "HEROES AREN’T BORN.THEY’RE BUILT.After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit of armor to fight evil.", language: "English", runtime: "126 mins", rating: rand(1..10) , image: "https://fanart.tv/fanart/movies/1726/movieposter/iron-man-521da627ecf87.jpg", video_url: "https://www.youtube.com/watch?v=KAE5ymVLmZg", genre: "Fantasy Adventure Action", director: dir4)
mov4 = Movie.create!(title: "Avengers: Infinity War", description: "AN ENTIRE UNIVERSE. ONCE AND FOR ALL.As the Avengers and their allies have continued to protect the world from threats too large for any one hero to handle, a new danger has emerged from the cosmic shadows: Thanos. A despot of intergalactic infamy, his goal is to collect all six Infinity Stones, artifacts of unimaginable power, and use them to inflict his twisted will on all of reality.", language: "English", runtime: "149 mins", rating: rand(1..10) , image: "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/fb1ede65688027.5afcac81af5e6.jpg", video_url: "https://www.youtube.com/watch?v=6ZfuNTqbHE8", genre: "Action", director: dir4)
mov5 = Movie.create!(title: "Tenet", description: "Armed with only one word - Tenet - and fighting for the survival of the entire world, the Protagonist journeys through a twilight world of international espionage on a mission that will unfold in something beyond real time.", language: "English", runtime: "150 mins ", rating: rand(1..10) , image: "https://www.filmsxpress.com/images/posters/459/TENET_VERT_MAIN_WALKING_DOM_2764x4096[1].jpg", video_url: "https://www.youtube.com/watch?v=L3pk_TBkihU", genre: "Action", director: dir5)
mov6 = Movie.create!(title: "Soul", description: "Joe Gardner is a middle school teacher with a love for jazz music. After a successful gig at the Half Note Club, he suddenly gets into an accident that separates his soul from his body and is transported to the You Seminar, a center in which souls develop and gain passions before being transported to a newborn child.", language: "English", runtime: "153 mins ", rating: rand(1..10) , image: "https://www.themoviedb.org/t/p/original/bzDAfXoqNAvWUe7uss2NE3BmRqy.jpg", video_url: "https://www.youtube.com/watch?v=xOsLIiBStEs", genre: "Animation", director: dir1)
mov7 = Movie.create!(title: "1917", description: "At the height of the First World War, two young British soldiers must cross enemy territory and deliver a message that will stop a deadly attack on hundreds of soldiers.", language: "English", runtime: "140 mins ", rating: rand(1..10) , image: "https://picfiles.alphacoders.com/336/thumb-1920-336319.jpg", video_url: "https://www.youtube.com/watch?v=YqNYrYUiMfg", genre: "War Action", director: dir2)
mov8 = Movie.create!(title: "Train to Busan", description: "Martial law is declared when a mysterious viral outbreak pushes Korea into a state of emergency. Those on an express train to Busan, a city that has successfully fended off the viral outbreak, must fight for their own survival…", language: "Korean", runtime: "150 mins ", rating: rand(1..10) , image: "https://image.tmdb.org/t/p/original/2oRRTPNtozgPhOa9CYZiVl4GRQ5.jpg", video_url: "https://www.youtube.com/watch?v=pyWuHv2-Abk", genre: "Horror Thriller", director: dir3)
mov9 = Movie.create!(title: "Titanic", description: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic, 84 years later. A young Rose boards the ship with her mother and fiancé. Meanwhile, Jack Dawson and Fabrizio De Rossi win third-class tickets aboard the ship. ", language: "English", runtime: "130 mins ", rating: rand(1..10) , image: "https://i5.walmartimages.com/asr/5783caa0-e430-46a2-aabc-b0d398e4c251_1.01ce983d10bfece818be8dee0e35ece6.jpeg", video_url: "https://www.youtube.com/watch?v=kVrqfYjkTdQ", genre: "Romance Dramma", director: dir1)
mov10 = Movie.create!(title: "Iron Man 3", description: "When Tony Stark’s world is torn apart by a formidable terrorist called the Mandarin, he starts an odyssey of rebuilding and retribution.", language: "English", runtime: "160 mins ", rating: rand(1..10) , image: "https://www.newdvdreleasedates.com/images/posters/large/iron-man-3-2013-10.jpg", video_url: "https://www.youtube.com/watch?v=oYSD2VQagc4", genre: "Action", director: dir5)
mov11 = Movie.create!(title: "Avatar", description: "In the 22nd century, a paraplegic Marine is dispatched to the moon Pandora on a unique mission, but becomes torn between following orders and protecting an alien civilization.", language: "English", runtime: "155 mins ", rating: rand(1..10) , image: "https://image.tmdb.org/t/p/original/6EiRUJpuoeQPghrs3YNktfnqOVh.jpg", video_url: "https://www.youtube.com/watch?v=6ziBFh3V1aM", genre: "Advanture Science-Fiction", director: dir4)

puts "seeding movies completed"

puts "seeding users"

user1 = User.create!(username: "ishwor123", email: "ishwor123@gmail.com", password_digest: "ish123pra")
user2 = User.create!(username: "anit235", email: "anit@gmail.com", password_digest: "anitl123")
user3 = User.create!(username: "ishanikc222", email: "ishani@gmail.com", password_digest: "shani334")
user4 = User.create!(username: "linapra123", email: "lina@gmail.com", password_digest: "lina9841")

puts "seeding users completed"

puts "seeding reviews"

rev1 = Review.create!(comment: "nice movie!!!" , rating: rand(1..10), movie: mov1, user: user1)
rev1 = Review.create!(comment: "Not worth watching.." , rating: rand(1..10), movie: mov2, user: user2)
rev1 = Review.create!(comment: "great movie!!!" , rating: rand(1..10), movie: mov3, user: user2)
rev1 = Review.create!(comment: "Worth watching movie!!!" , rating: rand(1..10), movie: mov4, user: user3)

puts "seeding reviews completed"

puts "seeding completed"
