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

class Registration < ApplicationRecord
  validates :name, :email, :extra_info, presence: true
end
