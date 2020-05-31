User.create!(username: "username",
             phone: "1234567890",
             email: "example@railstutorial.org",
             city: "testcity",
             password: "foobar1234",
             password_confirmation: "foobar1234",
             admin: true)

5.times do |n|
  username = Faker::Name.name
  phone = "1234567890"
  email = "example-#{n+1}@railstutorial.org"
  city = "testcity"
  password = "password"
  User.create!(username: username,
               phone: phone,
               email: email,
               city: city,
               password: password,
               password_confirmation: password)
end