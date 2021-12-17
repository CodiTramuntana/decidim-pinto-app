# frozen_string_literal: true

require "rails_helper"

describe "Homepage", type: :system do
  include Decidim::SanitizeHelper

  let!(:organization) do
    create(
      :organization,
      name: "Decidim Pinto",
      default_locale: :es,
      available_locales: [:en, :es]
    )
  end
  let!(:hero) { create :content_block, organization: organization, scope_name: :homepage, manifest_name: :hero, settings: { "welcome_text_es"=>"Bienvenido a Decidim Pinto" } }
  let!(:sub_hero) { create :content_block, organization: organization, scope_name: :homepage, manifest_name: :sub_hero }

  before do
    switch_to_host(organization.host)
    visit decidim.root_path
  end

  it "loads and shows organization name and main blocks" do
    visit decidim.root_path

    expect(page).to have_content("Decidim Pinto")
    within "section.hero .hero__container" do
      expect(page).to have_content("Bienvenido a Decidim Pinto")
    end
  end
end
