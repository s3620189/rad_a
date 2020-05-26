User.create!(phone: "1234567890",
             email: "example@railstutorial.org",
             password: "foobar",
             password_confirmation: "foobar",
             admin: true)

99.times do |n|
  phone = "1234567890"
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(phone: phone,
               email: email,
               password: password,
               password_confirmation: password)
end