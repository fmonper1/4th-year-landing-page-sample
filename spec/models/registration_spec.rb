# == Schema Information
#
# Table name: registrations
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  extra_info :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Registration, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
