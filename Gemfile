source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"

gem "rails", "~> 7.1.0"
gem "sqlite3", "~> 2.7" # Revert to working version
gem "puma", "~> 6.0"
gem "bootsnap", ">= 1.4.4", require: false

# Secure nokogiri version
gem "nokogiri", "1.18.10" # Updated to secure version

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem "web-console", ">= 4.1.0"
  gem "listen", "~> 3.3"
  gem "spring"
end
