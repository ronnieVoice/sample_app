require 'spec_helper'

describe "Static pages" do

	let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do
    before { visit root_path }

    it { has_content?('Sample App') }
    it { has_title?(full_title('')) }
    it { has_title?('| Home')}
  end

  describe "Help page" do
    before { visit help_path }

    it { has_content?('Help') }
    it { has_title?(full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }

    it { has_content?('About') }
    it { has_title?(full_title('About Us')) }
  end

  describe "Contact" do
    before { visit contact_path }

    it { has_selector?('h1', text: 'Contact') }
    it { has_title?(full_title('Contact')) }
  end

end