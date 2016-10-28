# == Schema Information
#
# Table name: visits
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Visit < ApplicationRecord
  has_many :link_clicks
end
