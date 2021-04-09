User.destroy_all

user1 = User.create!(email: "test@test.com", password: "password1", first_name: "Polly", last_name: "Wolly", dob: "2014-12-01", role: 0)
user2 = User.create!(email: "tester@test.com", password: "password2", first_name: "Choppo", last_name: "Whoppo", dob: "2016-09-03", role: 0)
user3 = User.create!(email: "testing@test.com", password: "password3", first_name: "Ravi", last_name: "Wavi", dob: "2020-12-23", role: 0)
user4 = User.create!(email: "tests@test.com", password: "password4", first_name: "Pepe", last_name: "Wepe", dob: "2020-12-23", role: 0)