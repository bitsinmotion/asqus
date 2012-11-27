# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'CREATING POLL WORKFLOW STATES'
PollWorkflowState.create([
  { :description => 'Start' },
  { :description => 'Published' },
  { :description => 'Closed' }
], :without_protection => true)

puts 'CREATING OFFICE TYPES'
OfficeType.create([
  { :description => 'President', :polity_type => 'country' },
  { :description => 'Vice President', :polity_type => 'country' },
  { :description => 'Governor', :polity_type => 'state' },
  { :description => 'Lieutenant Governor', :polity_type => 'state' },
  { :description => 'United States Senator', :polity_type => 'state' },
  { :description => 'United States Representative', :polity_type => 'congressional_district' },
  { :description => 'State Senator', :polity_type => 'state_senate_district' },
  { :description => 'State Representative', :polity_type => 'state_house_district' },
  { :description => 'Mayor', :polity_type => 'municipality' }
], :without_protection => true)

puts 'CREATING STATES'
State.create([
  { :name => 'Alabama', :abbreviation => 'AL'},
  { :name => 'Alaska', :abbreviation => 'AK' },
  { :name => 'Arizona', :abbreviation => 'AZ' },
  { :name => 'Arkansas', :abbreviation => 'AR' },
  { :name => 'California', :abbreviation => 'CA' },
  { :name => 'Colorado', :abbreviation => 'CO' },
  { :name => 'Connecticut', :abbreviation => 'CT' },
  { :name => 'Delaware', :abbreviation => 'DE' },
  { :name => 'District of Columbia', :abbreviation => 'DC' },
  { :name => 'Florida', :abbreviation => 'FL' },
  { :name => 'Georgia', :abbreviation => 'GA' },
  { :name => 'Hawaii', :abbreviation => 'HI' },
  { :name => 'Idaho', :abbreviation => 'ID' },
  { :name => 'Illinois', :abbreviation => 'IL' },
  { :name => 'Indiana', :abbreviation => 'IN' },
  { :name => 'Iowa', :abbreviation => 'IA' },
  { :name => 'Kansas', :abbreviation => 'KS' },
  { :name => 'Kentucky', :abbreviation => 'KY' },
  { :name => 'Louisiana', :abbreviation => 'LA' },
  { :name => 'Maine', :abbreviation => 'ME' },
  { :name => 'Maryland', :abbreviation => 'MD' },
  { :name => 'Massachusetts', :abbreviation => 'MA' },
  { :name => 'Michigan', :abbreviation => 'MI' },
  { :name => 'Minnesota', :abbreviation => 'MN' },
  { :name => 'Mississippi', :abbreviation => 'MS' },
  { :name => 'Missouri', :abbreviation => 'MO' },
  { :name => 'Montana', :abbreviation => 'MT' },
  { :name => 'Nebraska', :abbreviation => 'NE' },
  { :name => 'Nevada', :abbreviation => 'NV' },
  { :name => 'New Hampshire', :abbreviation => 'NH' },
  { :name => 'New Jersey', :abbreviation => 'NJ' },
  { :name => 'New Mexico', :abbreviation => 'NM' },
  { :name => 'New York', :abbreviation => 'NY' },
  { :name => 'North Carolina', :abbreviation => 'NC' },
  { :name => 'North Dakota', :abbreviation => 'ND' },
  { :name => 'Ohio', :abbreviation => 'OH' },
  { :name => 'Oklahoma', :abbreviation => 'OK' },
  { :name => 'Oregon', :abbreviation => 'OR' },
  { :name => 'Pennsylvania', :abbreviation => 'PA' },
  { :name => 'Rhode Island', :abbreviation => 'RI' },
  { :name => 'South Carolina', :abbreviation => 'SC' },
  { :name => 'South Dakota', :abbreviation => 'SD' },
  { :name => 'Tennessee', :abbreviation => 'TN' },
  { :name => 'Texas', :abbreviation => 'TX' },
  { :name => 'Utah', :abbreviation => 'UT' },
  { :name => 'Vermont', :abbreviation => 'VT' },
  { :name => 'Virginia', :abbreviation => 'VA' },
  { :name => 'Washington', :abbreviation => 'WA' },
  { :name => 'West Virginia', :abbreviation => 'WV' },
  { :name => 'Wisconsin', :abbreviation => 'WI' },
  { :name => 'Wyoming', :abbreviation => 'WY' }
], :without_protection => true)


puts 'CREATING ROLES'
Role.create([
  { :name => 'admin' }, 
  { :name => 'user' }, 
  { :name => 'VIP' }
], :without_protection => true)
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'First User', :email => 'user@example.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user.name
user2 = User.create! :name => 'Second User', :email => 'user2@example.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user2.name
user.add_role :admin
user2.add_role :VIP


