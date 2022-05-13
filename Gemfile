# frozen_string_literal: true

source "https://rubygems.org"

ruby RUBY_VERSION

DECIDIM_VERSION = { git: "https://github.com/CodiTramuntana/decidim.git", branch: "release/0.25-stable" }.freeze

gem "decidim", DECIDIM_VERSION
gem "decidim-age_action_authorization", git: "https://github.com/diputacioBCN/decidim-diba.git", glob: "decidim-age_action_authorization/*.gemspec"
gem "decidim-decidim_awesome"
gem "decidim-file_authorization_handler", git: "https://github.com/CodiTramuntana/decidim-file_authorization_handler.git"
gem "decidim-term_customizer", git: "https://github.com/mainio/decidim-module-term_customizer"
gem 'decidim-conferences'

gem "puma"
gem "uglifier", ">= 1.3.0"
gem "webpacker"
gem "wicked_pdf"

gem "figaro", ">= 1.1.1"
gem "openssl"

gem "aws-sdk-s3", require: false
# if deploying to a dedicated server
# gem "daemons"
# gem "delayed_job_active_record"
# gem "whenever"
# elsif deploying to Heroku
gem "redis"
gem "sidekiq"
group :production do
  gem "fog-aws"
  gem "rack-ssl-enforcer"
  gem "rails_12factor"
end
# endif

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
