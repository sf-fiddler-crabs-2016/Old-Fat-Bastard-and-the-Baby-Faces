10.times {User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, user_name: Faker::Internet.user_name, email: Faker::Internet.email, password: 'test1234')}
10.times {Question.create(title: Faker::Name.first_name, body: Faker::Name.last_name, user_id: 1)}
