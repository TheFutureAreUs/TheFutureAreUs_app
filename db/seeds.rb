# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


automotive_category = Category.where(name: 'automotive').first_or_create(name: 'automotive')
beauty_category = Category.where(name: 'beauty').first_or_create(name: 'beauty')
technology_category = Category.where(name: 'technology').first_or_create(name: 'technology')
academic_category = Category.where(name: 'academic').first_or_create(name: 'academic')
art_category = Category.where(name: 'art').first_or_create(name: 'art')
photography_category = Category.where(name: 'photography').first_or_create(name: 'photography')
culinary_category = Category.where(name: 'culinary').first_or_create(name: 'culinary')
fashion_category = Category.where(name: 'fashion').first_or_create(name: 'fashion')
fitness_category = Category.where(name: 'fitness').first_or_create(name: 'fitness')
childcare_category = Category.where(name: 'childcare').first_or_create(name: 'childcare')
event_services_category = Category.where(name: 'event services').first_or_create(name: 'event services')
other_category = Category.where(name: 'other').first_or_create(name: 'other')
