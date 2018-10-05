%w(genesys).each do |username|
  account = User.where(username: username).first_or_create!(password: 'Gf4E07Z4', password_confirmation: 'Gf4E07Z4')
end