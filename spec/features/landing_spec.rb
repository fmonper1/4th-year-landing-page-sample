require 'rails_helper'

describe 'Landing page'

  context 'When first visiting the site' do
    specify 'My visit is recorded'
    specify 'My visit persits for the session'
    specify 'My links are recored'
    specify 'Extra information about my link clicks is recored'
    specify 'I can register on the site'
    specify 'My registration is recorded for my visit'
  end

  context 'As a logged in user' do
    specify 'I can see a list of visits and link clicks'
    specify 'I can see the registration associated with a visit'
  end
  
end