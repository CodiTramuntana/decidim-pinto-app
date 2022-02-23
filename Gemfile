# frozen_string_literal: true

source "https://rubygems.org"

ruby RUBY_VERSION

DECIDIM_VERSION = { git: "https://github.com/CodiTramuntana/decidim.git", branch: "release/0.25-stable" }.freeze

gem "decidim", DECIDIM_VERSION
gem "puma"
gem "uglifier", ">= 1.3.0"
gem "webpacker"

gem "figaro", ">= 1.1.1"
gem "openssl"
# For seeds
gem "faker"

# if deploying to a dedicated server
# gem "daemons"
# gem "delayed_job_active_record"
# gem "whenever"
# elsif deploying to Heroku
gem "sidekiq"
gem "redis"
group :production do
  gem "rails_12factor"
  gem "fog-aws"
  gem "rack-ssl-enforcer"
end
# endif

group :production do
  gem "fog-aws"
  gem "rack-ssl-enforcer"
  gem "rails_12factor"
  gem "sidekiq"
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
