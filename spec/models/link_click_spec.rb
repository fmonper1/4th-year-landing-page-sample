# == Schema Information
#
# Table name: link_clicks
#
#  id          :integer          not null, primary key
#  visit_id    :integer
#  link_name   :string
#  link_css_id :string
#  url         :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_link_clicks_on_visit_id  (visit_id)
#

require 'rails_helper'

RSpec.describe LinkClick, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
