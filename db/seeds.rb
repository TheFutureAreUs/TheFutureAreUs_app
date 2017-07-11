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
# Maryland---------------------------------------------------------------
bowie_state_university = College.where(name: 'Bowie State University').first_or_create
coppin_state_university = College.where(name: 'Coppin State University').first_or_create
frostburg_state_university = College.where(name: 'Frostburg State University').first_or_create
morgan_state_university = College.where(name: 'Morgan State University').first_or_create
salisbury_university = College.where(name: 'Salisbury State University').first_or_create
st_marys_college_of_maryland = College.where(name: "St. Mary's College of Maryland").first_or_create
towson_university = College.where(name: 'Towson University').first_or_create
united_states_naval_academy = College.where(name: 'United States Naval Academy').first_or_create
university_of_baltimore = College.where(name: 'University of Baltimore').first_or_create
university_of_maryland_baltimorre = College.where(name: 'University of Maryland, Baltimore').first_or_create
university_maryland_baltimore_county = College.where(name: 'University of Maryland, Baltimore County').first_or_create
university_of_maryland_college_park = College.where(name: 'University of Maryland, College Park').first_or_create
university_of_maryland_eastern_shore = College.where(name: 'University of Maryland, Eastern Shore').first_or_create
university_of_maryland_university_college = College.where(name: 'University of Maryland University College').first_or_create
university_of_maryland_biotechnology_institute = College.where(name: 'University of Maryland, Biotechnology Institute').first_or_create
university_of_maryland_environmental_science = College.where(name: 'University of Maryland, Environmental Science').first_or_create
usm_hagerstown = College.where(name: 'USM Hagerstown').first_or_create
universities_at_shady_grove = College.where(name: 'Universities at Shady Grove').first_or_create
uniformed_services_university_of_the_health_sciences = College.where(name: 'Uniformed Services University of the Health Sciences').first_or_create
allegany_college_of_maryland = College.where(name: 'Allegany College of Maryland').first_or_create
anne_arundel_community_college = College.where(name: 'Anne Arundel Community College').first_or_create
baltimore_city_community_college = College.where(name: 'Baltimore City Community College').first_or_create
carroll_community_college = College.where(name: 'Carroll Community College').first_or_create
cecil_college = College.where(name: 'Cecil College').first_or_create
chesapeake_college = College.where(name: 'Chesapeake College').first_or_create
college_of_southern_maryland = College.where(name: 'College of Southern Maryland').first_or_create
community_college_of_baltimore_county = College.where(name: 'Community College of Baltimore County').first_or_create
frederick_community_college = College.where(name: 'Frederick Community College').first_or_create
garrett_college = College.where(name: 'Garrett College').first_or_create
hagerstown_community_college = College.where(name: 'Hagerstown Community College').first_or_create
harford_community_college = College.where(name: 'Harford Community College').first_or_create
howard_community_college = College.where(name: 'Howard Community College').first_or_create
montgomery_college = College.where(name: 'Montgomery College').first_or_create
prince_georges_community_college = College.where(name: "Prince George's Community College").first_or_create
wor_wic_community_college = College.where(name: 'Wor-Wic Community College').first_or_create
capitol_technology_university = College.where(name: 'Capitol Technology University').first_or_create
goucher_college = College.where(name: 'Goucher College').first_or_create
hood_college = College.where(name: 'Hood College').first_or_create
johns_hopkins_university = College.where(name: 'Johns Hopkins University').first_or_create
loyola_university_maryland = College.where(name: 'Loyola University Maryland').first_or_create
maryland_institute_college_of_art = College.where(name: 'Maryland Institute College of Art').first_or_create
maryland_university_of_integrative_health = College.where(name: 'Maryland University of Integrative Health').first_or_create
mcdaniel_college = College.where(name: 'McDaniel College').first_or_create
mount_st_marys_university = College.where(name: "Mount St. Mary's University").first_or_create
notre_dame_of_maryland_university = College.where(name: 'Notre Dame of Maryland University').first_or_create
st_johns_college = College.where(name: "St. John's College").first_or_create
stevenson_university = College.where(name: 'Stevenson University').first_or_create
washington_adventist_university = College.where(name: 'Washington Adventist University').first_or_create
washington_college = College.where(name: 'Washington College').first_or_create
capital_bible_seminary = College.where(name: 'Capital Bible Seminary').first_or_create
ner_israel_rabbinical_college = College.where(name: 'Ner Israel Rabbinical College').first_or_create
st_marys_seminary_and_university = College.where(name: "St. Mary's Seminary and University").first_or_create
tesst_college_of_technology = College.where(name: 'TESST College of Technology').first_or_create
lincoln_college_of_technology = College.where(name: 'Lincoln College of Technology').first_or_create
