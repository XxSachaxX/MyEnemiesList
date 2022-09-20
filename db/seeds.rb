require "open-uri"

puts "Purging database...."
User.destroy_all

puts "creating 4 users"

puts "Creating user1"
user1 = User.new(email: "john@test.fr", username: "John", password: "123456")
avatar1 = URI.open("https://www.telerama.fr/sites/tr_master/files/styles/simplecrop1000/public/medias/2010/12/media_63445/le-reve-s-est-arrete-a-central-park%2CM45920.jpg?itok=hspwWtDh")
user1.avatar.attach(io: avatar1, filename: "John Lennon", content_type: "image/png")
user1.save!

puts "Creating user2"
user2 = User.new(email: "paul@test.fr", username: "Paul", password: "123456")
avatar2 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Paul_McCartney_Headshot_%28cropped%29.jpg/170px-Paul_McCartney_Headshot_%28cropped%29.jpg")
user2.avatar.attach(io: avatar2, filename: "Paul McCartney", content_type: "image/png")
user2.save!

puts "Creating user3"
user3 = User.new(email: "ringo@test.fr", username: "Ringo", password: "123456")
avatar3 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Ringo_Starr_NY_1964.png/200px-Ringo_Starr_NY_1964.png.jpg")
user3.avatar.attach(io: avatar3, filename: "Ringo Star", content_type: "image/png")
user3.save!

puts "Creating user3"
user4 = User.new(email: "george@test.fr", username: "George", password: "123456")
avatar4 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Ringo_Starr_NY_1964.png/200px-Ringo_Starr_NY_1964.png.jpg")
user4.avatar.attach(io: avatar4, filename: "George Harrisson", content_type: "image/png")
user4.save!

puts "All 4 users created!"

puts "Now creating lists"

puts "Creating list 1"
list1 = List.new(name: "My awesome enemies list!", user_id: user1.id)
list1.save!

puts "Creating list 2"
list2 = List.new(name: "My awesome enemies list!", user_id: user2.id)
list2.save!

puts "Creating list 3"
list3 = List.new(name: "My awesome enemies list!", user_id: user3.id)
list3.save!

puts "Creating list 4"
list4 = List.new(name: "My awesome enemies list!", user_id: user4.id)
list4.save!

puts "All 4 lists created!"

puts "Creating 16 ennemies"

puts "Creating enemies for list 1"

puts "Creating list 1 enemy 1"
file1 = URI.open("https://upload.wikimedia.org/wikipedia/fr/thumb/c/c0/Logo_P%C3%B4le_Emploi_2008.svg/1200px-Logo_P%C3%B4le_Emploi_2008.svg.png")
enemy1 = Enemy.new(name: "Pôle emploi", grudge: "So freaking inefficient", list_id: list1.id)
enemy1.photo.attach(io: file1, filename: "Pôle Emploi", content_type: "image/png")
enemy1.save

puts "Creating list 1 enemy 2"
file2 = URI.open("https://upload.wikimedia.org/wikipedia/fr/thumb/c/c0/Logo_P%C3%B4le_Emploi_2008.svg/1200px-Logo_P%C3%B4le_Emploi_2008.svg.png")
enemy2 = Enemy.new(name: "Pôle emploi", grudge: "So freaking inefficient", list_id: list1.id)
enemy2.photo.attach(io: file2, filename: "Pôle Emploi", content_type: "image/png")
enemy2.save

puts "Creating list 1 enemy 3"
file3 = URI.open("https://upload.wikimedia.org/wikipedia/fr/thumb/c/c0/Logo_P%C3%B4le_Emploi_2008.svg/1200px-Logo_P%C3%B4le_Emploi_2008.svg.png")
enemy3 = Enemy.new(name: "Pôle emploi", grudge: "So freaking inefficient", list_id: list1.id)
enemy3.photo.attach(io: file3, filename: "Pôle Emploi", content_type: "image/png")
enemy3.save

puts "Creating list 1 enemy 4"
file4 = URI.open("https://upload.wikimedia.org/wikipedia/fr/thumb/c/c0/Logo_P%C3%B4le_Emploi_2008.svg/1200px-Logo_P%C3%B4le_Emploi_2008.svg.png")
enemy4 = Enemy.new(name: "Pôle emploi", grudge: "So freaking inefficient", list_id: list1.id)
enemy4.photo.attach(io: file4, filename: "Pôle Emploi", content_type: "image/png")
enemy4.save

puts "Creating enemies for list 2"

puts "Creating list 2 enemy 1"
file5 = URI.open("https://upload.wikimedia.org/wikipedia/fr/thumb/c/c0/Logo_P%C3%B4le_Emploi_2008.svg/1200px-Logo_P%C3%B4le_Emploi_2008.svg.png")
enemy5 = Enemy.new(name: "Pôle emploi", grudge: "So freaking inefficient", list_id: list2.id)
enemy5.photo.attach(io: file5, filename: "Pôle Emploi", content_type: "image/png")
enemy5.save

puts "Creating list 2 enemy 2"
file6 = URI.open("https://upload.wikimedia.org/wikipedia/fr/thumb/c/c0/Logo_P%C3%B4le_Emploi_2008.svg/1200px-Logo_P%C3%B4le_Emploi_2008.svg.png")
enemy6 = Enemy.new(name: "Pôle emploi", grudge: "So freaking inefficient", list_id: list2.id)
enemy6.photo.attach(io: file6, filename: "Pôle Emploi", content_type: "image/png")
enemy6.save

puts "Creating list 2 enemy 3"
file7 = URI.open("https://upload.wikimedia.org/wikipedia/fr/thumb/c/c0/Logo_P%C3%B4le_Emploi_2008.svg/1200px-Logo_P%C3%B4le_Emploi_2008.svg.png")
enemy7 = Enemy.new(name: "Pôle emploi", grudge: "So freaking inefficient", list_id: list2.id)
enemy7.photo.attach(io: file7, filename: "Pôle Emploi", content_type: "image/png")
enemy7.save

puts "Creating list 2 enemy 4"
file8 = URI.open("https://upload.wikimedia.org/wikipedia/fr/thumb/c/c0/Logo_P%C3%B4le_Emploi_2008.svg/1200px-Logo_P%C3%B4le_Emploi_2008.svg.png")
enemy8 = Enemy.new(name: "Pôle emploi", grudge: "So freaking inefficient", list_id: list2.id)
enemy8.photo.attach(io: file8, filename: "Pôle Emploi", content_type: "image/png")
enemy8.save

puts "Creating enemies for list 3"

puts "Creating list 3 enemy 1"
file9 = URI.open("https://upload.wikimedia.org/wikipedia/fr/thumb/c/c0/Logo_P%C3%B4le_Emploi_2008.svg/1200px-Logo_P%C3%B4le_Emploi_2008.svg.png")
enemy9 = Enemy.new(name: "Pôle emploi", grudge: "So freaking inefficient", list_id: list3.id)
enemy9.photo.attach(io: file9, filename: "Pôle Emploi", content_type: "image/png")
enemy9.save

puts "Creating list 3 enemy 2"
file10 = URI.open("https://upload.wikimedia.org/wikipedia/fr/thumb/c/c0/Logo_P%C3%B4le_Emploi_2008.svg/1200px-Logo_P%C3%B4le_Emploi_2008.svg.png")
enemy10 = Enemy.new(name: "Pôle emploi", grudge: "So freaking inefficient", list_id: list3.id)
enemy10.photo.attach(io: file10, filename: "Pôle Emploi", content_type: "image/png")
enemy10.save

puts "Creating list 3 enemy 3"
file11 = URI.open("https://upload.wikimedia.org/wikipedia/fr/thumb/c/c0/Logo_P%C3%B4le_Emploi_2008.svg/1200px-Logo_P%C3%B4le_Emploi_2008.svg.png")
enemy11 = Enemy.new(name: "Pôle emploi", grudge: "So freaking inefficient", list_id: list3.id)
enemy11.photo.attach(io: file11, filename: "Pôle Emploi", content_type: "image/png")
enemy11.save

puts "Creating list 3 enemy 4"
file12 = URI.open("https://upload.wikimedia.org/wikipedia/fr/thumb/c/c0/Logo_P%C3%B4le_Emploi_2008.svg/1200px-Logo_P%C3%B4le_Emploi_2008.svg.png")
enemy12 = Enemy.new(name: "Pôle emploi", grudge: "So freaking inefficient", list_id: list3.id)
enemy12.photo.attach(io: file12, filename: "Pôle Emploi", content_type: "image/png")
enemy12.save

puts "Creating enemies for list 4"

puts "Creating list 4 enemy 1"
file13 = URI.open("https://upload.wikimedia.org/wikipedia/fr/thumb/c/c0/Logo_P%C3%B4le_Emploi_2008.svg/1200px-Logo_P%C3%B4le_Emploi_2008.svg.png")
enemy13 = Enemy.new(name: "Pôle emploi", grudge: "So freaking inefficient", list_id: list4.id)
enemy13.photo.attach(io: file13, filename: "Pôle Emploi", content_type: "image/png")
enemy13.save

puts "Creating list 4 enemy 2"
file14 = URI.open("https://upload.wikimedia.org/wikipedia/fr/thumb/c/c0/Logo_P%C3%B4le_Emploi_2008.svg/1200px-Logo_P%C3%B4le_Emploi_2008.svg.png")
enemy14 = Enemy.new(name: "Pôle emploi", grudge: "So freaking inefficient", list_id: list4.id)
enemy14.photo.attach(io: file14, filename: "Pôle Emploi", content_type: "image/png")
enemy14.save

puts "Creating list 4 enemy 3"
file15 = URI.open("https://upload.wikimedia.org/wikipedia/fr/thumb/c/c0/Logo_P%C3%B4le_Emploi_2008.svg/1200px-Logo_P%C3%B4le_Emploi_2008.svg.png")
enemy15 = Enemy.new(name: "Pôle emploi", grudge: "So freaking inefficient", list_id: list4.id)
enemy15.photo.attach(io: file15, filename: "Pôle Emploi", content_type: "image/png")
enemy15.save

puts "Creating list 4 enemy 4"
file16 = URI.open("https://upload.wikimedia.org/wikipedia/fr/thumb/c/c0/Logo_P%C3%B4le_Emploi_2008.svg/1200px-Logo_P%C3%B4le_Emploi_2008.svg.png")
enemy16 = Enemy.new(name: "Pôle emploi", grudge: "So freaking inefficient", list_id: list4.id)
enemy16.photo.attach(io: file16, filename: "Pôle Emploi", content_type: "image/png")
enemy16.save
