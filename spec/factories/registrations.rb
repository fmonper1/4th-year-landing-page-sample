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



FactoryBot.define do
  factory :registration do
    name { "MyString" }
    email { "MyString" }
    extra_info { "MyText" }
  end
end
