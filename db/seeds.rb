# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



users = User.create([{ email:"john@test.com",password:"123456789",password_confirmation: '123456789'},
                     { email:"smith@test.com",password:"123456789",password_confirmation: '123456789'},
                     {email:"adam@test.com",password:"123456789",password_confirmation: '123456789'}
                    ])
GlucoseLevel.create(g_level: 200 , user_id: users.first.id, created_at: Time.now + 10.days)
GlucoseLevel.create(g_level: 400 , user_id: users.first.id, created_at: Time.now + 2.days)
GlucoseLevel.create(g_level: 500 , user_id: users.second.id,created_at: Time.now + 5.days)
GlucoseLevel.create(g_level: 1200 , user_id: users.last.id,created_at: Time.now + 1.days)
GlucoseLevel.create(g_level: 500 , user_id: users.second.id,created_at: Time.now + 5.days)
GlucoseLevel.create(g_level: 400 , user_id: users.first.id,created_at: Time.now + 7.days)
