web: bundle exec puma -C config/puma.rb
worker: bundle exec sidekiq -e ${RACK_ENV:-production} -C config/sidekiq.yml
release: bundle exec rake db:migrate