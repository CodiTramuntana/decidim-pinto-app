# frozen_string_literal: true

require "sidekiq/web"

Rails.application.routes.draw do
  mount Decidim::Core::Engine => "/"
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  mount Decidim::FileAuthorizationHandler::AdminEngine => "/admin"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  authenticate :user, ->(u) { u.admin? } do
    mount Sidekiq::Web => "/sidekiq"
  end
end
