require 'rails_helper'

describe 'Landing page', js: true do

  context 'When first visiting the site' do

    specify 'My visit is recorded' do
      visit '/'
      expect(Visit.last).to_not be_nil
    end

    specify 'My visit persits for the session' do
      visit '/'
      visit '/pricing'
      expect(Visit.count).to eq 1
    end

    specify 'My links are recorded' do
      visit '/'
      click_link 'imperdiet-dolor-hendrerit'
      wait_for_ajax
      expect(LinkClick.last.url).to eq '/pricing'
    end

    specify 'Extra information about my link clicks is recored' do
      visit '/'
      click_link 'imperdiet-dolor-hendrerit'
      wait_for_ajax
      link_click = LinkClick.last
      expect(link_click.link_css_id).to eq 'imperdiet-dolor-hendrerit'
      expect(link_click.link_name).to eq 'Imperdiet Dolor Hendrerit link in section 2'
    end

    specify 'I can register on the site' do
      visit '/registrations/new'
      fill_in_registration_form
      registration = Registration.last
      expect(registration.name).to eq 'My Name'
      expect(registration.email).to eq 'example@example.co.uk'
      expect(registration.extra_info).to eq 'Some extra info'
    end

    specify 'My registration is recorded for my visit' do
      visit '/registrations/new'
      this_visit = Visit.last
      fill_in_registration_form
      expect(this_visit.reload.registration).to eq Registration.last
    end

  end

  context 'As a logged in user' do
    let(:user)  { FactoryGirl.create :user }
    let(:my_visit) { FactoryGirl.create :visit }
    let!(:link_click) { FactoryGirl.create :link_click, link_name: 'My link name', link_css_id: 'link-1', url: '/page_1', visit: my_visit}
    before { login_as user }

    specify 'I can see a list of visits and link clicks' do
      visit '/visits'
      expect(page).to have_content 'My link name'
      expect(page).to have_content 'link-1'
      expect(page).to have_content '/page_1'
    end


  end


  def fill_in_registration_form
    fill_in 'Name', with: 'My Name'
    fill_in 'Email', with: 'example@example.co.uk'
    fill_in 'Extra info', with: 'Some extra info'
    click_button 'Register'
  end
  
end