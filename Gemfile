# frozen_string_literal: true

source "https://rubygems.org"

ruby RUBY_VERSION

DECIDIM_VERSION = { git: "https://github.com/CodiTramuntana/decidim.git", branch: "release/0.27-stable" }.freeze

gem "decidim", DECIDIM_VERSION
gem "decidim-age_action_authorization", git: "https://github.com/diputacioBCN/decidim-diba.git", glob: "decidim-age_action_authorization/*.gemspec"
gem "decidim-conferences"
gem "decidim-consultations"
# gem "decidim-decidim_awesome"
gem "decidim-file_authorization_handler", path: "/home/oliver/prog/decidim/modules/decidim-file_authorization_handler-codit"
# gem "decidim-file_authorization_handler", git: "https://github.com/CodiTramuntana/decidim-file_authorization_handler.git", tag: "v0.26.2.3"
gem "decidim-term_customizer", git: "https://github.com/mainio/decidim-module-term_customizer", branch: "master"

# temporal solution while gems embrace new psych 4 (the default in Ruby 3.1) behavior.
gem 'psych', '< 4'

gem "puma"
gem "uglifier", ">= 1.3.0"
gem "webpacker"
gem "wicked_pdf"

gem "figaro", ">= 1.1.1"
gem "openssl"

# Remove this nokogiri forces version at any time but make sure that no __truncato_root__ text appears in the cards in general.
# More exactly in comments in the homepage and in processes cards in the processes listing
gem "nokogiri", "1.13.3"

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
  gem "listen"#, "~> 3.1.0"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console"
end
