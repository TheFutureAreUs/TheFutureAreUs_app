# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Listing Categories-----------------------------------------------------

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

#------------------------------------------------------------------------

# Colleges and Universities----------------------------------------------

maryland_colleges = College.where(name: 'Maryland Colleges/Universities').first_or_create(name: 'Maryland Colleges/Universities')

# Maryland---------------------------------------------------------------
Speccollege.where(name: 'Bowie State University', college_id: maryland_colleges.id).first_or_create(name: 'Bowie State University', college_id: maryland_colleges.id)
Speccollege.where(name: 'Coppin State University', college_id: maryland_colleges.id).first_or_create(name: 'Coppin State University', college_id: maryland_colleges.id)
Speccollege.where(name: 'Frostburg State University', college_id: maryland_colleges.id).first_or_create(name: 'Frostburg State University', college_id: maryland_colleges.id)
Speccollege.where(name: 'Morgan State University', college_id: maryland_colleges.id).first_or_create(name: 'Morgan State University', college_id: maryland_colleges.id)
Speccollege.where(name: 'Salisbury State University', college_id: maryland_colleges.id).first_or_create(name: 'Salisbury State University', college_id: maryland_colleges.id)


Speccollege.where(name: "St. Mary's College of Maryland", college_id: maryland_colleges.id).first_or_create(name: "St. Mary's College of Maryland", college_id: maryland_colleges.id)
Speccollege.where(name: 'Towson University', college_id: maryland_colleges.id).first_or_create(name: 'Towson University', college_id: maryland_colleges.id)
Speccollege.where(name: 'United States Naval Academy', college_id: maryland_colleges.id).first_or_create(name: 'United States Naval Academy', college_id: maryland_colleges.id)
Speccollege.where(name: 'University of Baltimore', college_id: maryland_colleges.id).first_or_create(name: 'University of Baltimore', college_id: maryland_colleges.id)
Speccollege.where(name: 'University of Maryland, Baltimore', college_id: maryland_colleges.id).first_or_create(name: 'University of Maryland, Baltimore', college_id: maryland_colleges.id)


Speccollege.where(name: 'University of Maryland, Baltimore County', college_id: maryland_colleges.id).first_or_create(name: 'University of Maryland, Baltimore County', college_id: maryland_colleges.id)
Speccollege.where(name: 'University of Maryland, College Park', college_id: maryland_colleges.id).first_or_create(name: 'University of Maryland, College Park', college_id: maryland_colleges.id)
Speccollege.where(name: 'University of Maryland, Eastern Shore', college_id: maryland_colleges.id).first_or_create(name: 'University of Maryland, Eastern Shore', college_id: maryland_colleges.id)
Speccollege.where(name: 'University of Maryland University College', college_id: maryland_colleges.id).first_or_create(name: 'University of Maryland University College', college_id: maryland_colleges.id)
Speccollege.where(name: 'University of Maryland, Biotechnology Institute', college_id: maryland_colleges.id).first_or_create(name: 'University of Maryland, Biotechnology Institute', college_id: maryland_colleges.id)


Speccollege.where(name: 'University of Maryland, Environmental Science', college_id: maryland_colleges.id).first_or_create(name: 'University of Maryland, Environmental Science', college_id: maryland_colleges.id)
Speccollege.where(name: 'USM Hagerstown', college_id: maryland_colleges.id).first_or_create(name: 'USM Hagerstown', college_id: maryland_colleges.id)
Speccollege.where(name: 'Universities at Shady Grove', college_id: maryland_colleges.id).first_or_create(name: 'Universities at Shady Grove', college_id: maryland_colleges.id)
Speccollege.where(name: 'Uniformed Services University of the Health Sciences', college_id: maryland_colleges.id).first_or_create(name: 'Uniformed Services University of the Health Sciences', college_id: maryland_colleges.id)
Speccollege.where(name: 'Allegany College of Maryland', college_id: maryland_colleges.id).first_or_create(name: 'Allegany College of Maryland', college_id: maryland_colleges.id)


Speccollege.where(name: 'Anne Arundel Community College', college_id: maryland_colleges.id).first_or_create(name: 'Anne Arundel Community College', college_id: maryland_colleges.id)
Speccollege.where(name: 'Baltimore City Community College', college_id: maryland_colleges.id).first_or_create(name: 'Baltimore City Community College', college_id: maryland_colleges.id)
Speccollege.where(name: 'Carroll Community College', college_id: maryland_colleges.id).first_or_create(name: 'Carroll Community College', college_id: maryland_colleges.id)
Speccollege.where(name: 'Cecil College', college_id: maryland_colleges.id).first_or_create(name: 'Cecil College', college_id: maryland_colleges.id)
Speccollege.where(name: 'Chesapeake College', college_id: maryland_colleges.id).first_or_create(name: 'Chesapeake College', college_id: maryland_colleges.id)


Speccollege.where(name: 'College of Southern Maryland', college_id: maryland_colleges.id).first_or_create(name: 'College of Southern Maryland', college_id: maryland_colleges.id)
Speccollege.where(name: 'Community College of Baltimore County', college_id: maryland_colleges.id).first_or_create(name: 'Community College of Baltimore County', college_id: maryland_colleges.id)
Speccollege.where(name: 'Frederick Community College', college_id: maryland_colleges.id).first_or_create(name: 'Frederick Community College', college_id: maryland_colleges.id)
Speccollege.where(name: 'Garrett College', college_id: maryland_colleges.id).first_or_create(name: 'Garrett College', college_id: maryland_colleges.id)
Speccollege.where(name: 'Hagerstown Community College', college_id: maryland_colleges.id).first_or_create(name: 'Hagerstown Community College', college_id: maryland_colleges.id)


Speccollege.where(name: 'Harford Community College', college_id: maryland_colleges.id).first_or_create(name: 'Harford Community College', college_id: maryland_colleges.id)
Speccollege.where(name: 'Howard Community College', college_id: maryland_colleges.id).first_or_create(name: 'Howard Community College', college_id: maryland_colleges.id)
Speccollege.where(name: 'Montgomery College', college_id: maryland_colleges.id).first_or_create(name: 'Montgomery College', college_id: maryland_colleges.id)
Speccollege.where(name: "Prince George's Community College", college_id: maryland_colleges.id).first_or_create(name: "Prince George's Community College", college_id: maryland_colleges.id)
Speccollege.where(name: 'Wor-Wic Community College', college_id: maryland_colleges.id).first_or_create(name: 'Wor-Wic Community College', college_id: maryland_colleges.id)


Speccollege.where(name: 'Capitol Technology University', college_id: maryland_colleges.id).first_or_create(name: 'Capitol Technology University', college_id: maryland_colleges.id)
Speccollege.where(name: 'Goucher College', college_id: maryland_colleges.id).first_or_create(name: 'Goucher College', college_id: maryland_colleges.id)
Speccollege.where(name: 'Hood College', college_id: maryland_colleges.id).first_or_create(name: 'Hood College', college_id: maryland_colleges.id)
Speccollege.where(name: 'Johns Hopkins University', college_id: maryland_colleges.id).first_or_create(name: 'Johns Hopkins University', college_id: maryland_colleges.id)
Speccollege.where(name: 'Loyola University Maryland', college_id: maryland_colleges.id).first_or_create(name: 'Loyola University Maryland', college_id: maryland_colleges.id)


Speccollege.where(name: 'Maryland Institute College of Art', college_id: maryland_colleges.id).first_or_create(name: 'Maryland Institute College of Art', college_id: maryland_colleges.id)
Speccollege.where(name: 'Maryland University of Integrative Health', college_id: maryland_colleges.id).first_or_create(name: 'Maryland University of Integrative Health', college_id: maryland_colleges.id)
Speccollege.where(name: 'McDaniel College', college_id: maryland_colleges.id).first_or_create(name: 'McDaniel College', college_id: maryland_colleges.id)
Speccollege.where(name: "Mount St. Mary's University", college_id: maryland_colleges.id).first_or_create(name: "Mount St. Mary's University", college_id: maryland_colleges.id)
Speccollege.where(name: 'Notre Dame of Maryland University', college_id: maryland_colleges.id).first_or_create(name: 'Notre Dame of Maryland University', college_id: maryland_colleges.id)


Speccollege.where(name: "St. John's College", college_id: maryland_colleges.id).first_or_create(name: "St. John's College", college_id: maryland_colleges.id)
Speccollege.where(name: 'Stevenson University', college_id: maryland_colleges.id).first_or_create(name: 'Stevenson University', college_id: maryland_colleges.id)
Speccollege.where(name: 'Washington Adventist University', college_id: maryland_colleges.id).first_or_create(name: 'Washington Adventist University', college_id: maryland_colleges.id)
Speccollege.where(name: 'Washington College', college_id: maryland_colleges.id).first_or_create(name: 'Washington College', college_id: maryland_colleges.id)
Speccollege.where(name: 'Capital Bible Seminary', college_id: maryland_colleges.id).first_or_create(name: 'Capital Bible Seminary', college_id: maryland_colleges.id)


Speccollege.where(name: 'Ner Israel Rabbinical College', college_id: maryland_colleges.id).first_or_create(name: 'Ner Israel Rabbinical College', college_id: maryland_colleges.id)
Speccollege.where(name: "St. Mary's Seminary and University", college_id: maryland_colleges.id).first_or_create(name: "St. Mary's Seminary and University", college_id: maryland_colleges.id)
Speccollege.where(name: 'TESST College of Technology', college_id: maryland_colleges.id).first_or_create(name: 'TESST College of Technology', college_id: maryland_colleges.id)
Speccollege.where(name: 'Lincoln College of Technology', college_id: maryland_colleges.id).first_or_create(name: 'Lincoln College of Technology', college_id: maryland_colleges.id)
