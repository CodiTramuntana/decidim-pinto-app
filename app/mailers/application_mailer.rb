# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: Rails.application.secrets.smtp_from
  layout "mailer"
end
