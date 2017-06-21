source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0.3'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
# Custom gems------------------------------------------------------------------------
gem 'bootstrap-sass', '~> 3.3.6'
gem 'mail_form', '~> 1.6'
gem 'acts-as-taggable-on', '~> 4.0'
gem 'devise', '~> 4.3'
gem 'geocoder', '~> 1.4'
gem 'tinymce-rails', '~> 4.3'
gem 'carrierwave', '~> 1.1'
gem 'mini_magick', '~> 4.7'
gem 'font-awesome-sass', '~> 4.7'
gem 'slide-down-alerts-rails', '~> 0.0.2'
#------------------------------------------------------------------------------------

group :development, :test do
  gem 'sqlite3'
  gem 'byebug', platform: :mri
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'pg', '~> 0.20.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
