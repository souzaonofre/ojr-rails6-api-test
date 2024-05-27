# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

r1 = Recruiter.new({ name: 'Recruiter 001', email: 'recruiter001@gmail.com' })
r1.password = 'pwdrecruiter001'
r1.password_confirmation = 'pwdrecruiter001'
r1.save

