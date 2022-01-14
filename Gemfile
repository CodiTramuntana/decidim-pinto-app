# frozen_string_literal: true

source "https://rubygems.org"

ruby RUBY_VERSION

DECIDIM_VERSION = { git: "https://github.com/CodiTramuntana/decidim.git", branch: "release/0.24-stable" }.freeze

gem "puma"
gem "uglifier", ">= 1.3.0"

gem "figaro", ">= 1.1.1"
gem "openssl"

gem "decidim", DECIDIM_VERSION

group :production do
  gem "sidekiq"
  gem "rails_12factor"
  gem "fog-aws"
  gem "rack-ssl-enforcer"
end

group :development, :test do
  gem "better_errors"
  gem "binding_of_caller"
  gem "bootsnap"
  gem "byebug", platform: :mri
  gem "decidim-dev", DECIDIM_VERSION
  gem "faker"
end

group :development do
  gem "letter_opener_web"
  gem "listen", "~> 3.1.0"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console"
end

group :production do
  gem "sidekiq"
end
