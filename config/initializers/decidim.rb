# frozen_string_literal: true

Decidim.configure do |config|
  config.application_name = "Decidim Pinto APP"

  config.mailer_sender = Rails.application.secrets.smtp_from

  # Change these lines to set your preferred locales
  config.default_locale = :es
  config.available_locales = [:en, :es]

  config.enable_html_header_snippets = true
  config.track_newsletter_links = true
  config.maps = {
    provider: :here,
    api_key: Rails.application.secrets.maps[:here_api_key],
    static: { url: "https://image.maps.ls.hereapi.com/mia/1.6/mapview" }
  }
end

# Inform Decidim about the assets folder
Decidim.register_assets_path File.expand_path("app/packs", Rails.application.root)

Rails.application.config.i18n.available_locales = Decidim.available_locales
Rails.application.config.i18n.default_locale = Decidim.default_locale

Decidim::Verifications.register_workflow(:file_authorization_handler) do |workflow|
  workflow.form = "FileAuthorizationHandler"
  workflow.action_authorizer = "Decidim::AgeActionAuthorization::Authorizer"
  workflow.options do |options|
    options.attribute :age, type: :string, required: false
    options.attribute :max_age, type: :string, required: false
  end
end
