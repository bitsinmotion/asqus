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
  { :description => 'President', :polity_type => 'Country' },
  { :description => 'Vice President', :polity_type => 'Country' },
  { :description => 'Governor', :polity_type => 'State' },
  { :description => 'Lieutenant Governor', :polity_type => 'State' },
  { :description => 'United States Senator', :polity_type => 'State' },
  { :description => 'United States Representative', :polity_type => 'CongressionalDistrict' },
  { :description => 'State Senator', :polity_type => 'StateSenateDistrict' },
  { :description => 'State Representative', :polity_type => 'StateHouseDistrict' },
  { :description => 'Mayor', :polity_type => 'Municipality' }
], :without_protection => true)

puts 'CREATING STATES'
State.create([
  { :id => 1, :name => 'Alabama', :abbreviation => 'AL'},
  { :id => 2, :name => 'Alaska', :abbreviation => 'AK' },
  { :id => 3, :name => 'Arizona', :abbreviation => 'AZ' },
  { :id => 4, :name => 'Arkansas', :abbreviation => 'AR' },
  { :id => 5, :name => 'California', :abbreviation => 'CA' },
  { :id => 6, :name => 'Colorado', :abbreviation => 'CO' },
  { :id => 7, :name => 'Connecticut', :abbreviation => 'CT' },
  { :id => 8, :name => 'Delaware', :abbreviation => 'DE' },
  { :id => 9, :name => 'Florida', :abbreviation => 'FL' },
  { :id => 10, :name => 'Georgia', :abbreviation => 'GA' },
  { :id => 11, :name => 'Hawaii', :abbreviation => 'HI' },
  { :id => 12, :name => 'Idaho', :abbreviation => 'ID' },
  { :id => 13, :name => 'Illinois', :abbreviation => 'IL' },
  { :id => 14, :name => 'Indiana', :abbreviation => 'IN' },
  { :id => 15, :name => 'Iowa', :abbreviation => 'IA' },
  { :id => 16, :name => 'Kansas', :abbreviation => 'KS' },
  { :id => 17, :name => 'Kentucky', :abbreviation => 'KY' },
  { :id => 18, :name => 'Louisiana', :abbreviation => 'LA' },
  { :id => 19, :name => 'Maine', :abbreviation => 'ME' },
  { :id => 20, :name => 'Maryland', :abbreviation => 'MD' },
  { :id => 21, :name => 'Massachusetts', :abbreviation => 'MA' },
  { :id => 22, :name => 'Michigan', :abbreviation => 'MI' },
  { :id => 23, :name => 'Minnesota', :abbreviation => 'MN' },
  { :id => 24, :name => 'Mississippi', :abbreviation => 'MS' },
  { :id => 25, :name => 'Missouri', :abbreviation => 'MO' },
  { :id => 26, :name => 'Montana', :abbreviation => 'MT' },
  { :id => 27, :name => 'Nebraska', :abbreviation => 'NE' },
  { :id => 28, :name => 'Nevada', :abbreviation => 'NV' },
  { :id => 29, :name => 'New Hampshire', :abbreviation => 'NH' },
  { :id => 30, :name => 'New Jersey', :abbreviation => 'NJ' },
  { :id => 31, :name => 'New Mexico', :abbreviation => 'NM' },
  { :id => 32, :name => 'New York', :abbreviation => 'NY' },
  { :id => 33, :name => 'North Carolina', :abbreviation => 'NC' },
  { :id => 34, :name => 'North Dakota', :abbreviation => 'ND' },
  { :id => 35, :name => 'Ohio', :abbreviation => 'OH' },
  { :id => 36, :name => 'Oklahoma', :abbreviation => 'OK' },
  { :id => 37, :name => 'Oregon', :abbreviation => 'OR' },
  { :id => 38, :name => 'Pennsylvania', :abbreviation => 'PA' },
  { :id => 39, :name => 'Rhode Island', :abbreviation => 'RI' },
  { :id => 40, :name => 'South Carolina', :abbreviation => 'SC' },
  { :id => 41, :name => 'South Dakota', :abbreviation => 'SD' },
  { :id => 42, :name => 'Tennessee', :abbreviation => 'TN' },
  { :id => 43, :name => 'Texas', :abbreviation => 'TX' },
  { :id => 44, :name => 'Utah', :abbreviation => 'UT' },
  { :id => 45, :name => 'Vermont', :abbreviation => 'VT' },
  { :id => 46, :name => 'Virginia', :abbreviation => 'VA' },
  { :id => 47, :name => 'Washington', :abbreviation => 'WA' },
  { :id => 48, :name => 'West Virginia', :abbreviation => 'WV' },
  { :id => 49, :name => 'Wisconsin', :abbreviation => 'WI' },
  { :id => 50, :name => 'Wyoming', :abbreviation => 'WY' },
  { :id => 51, :name => 'District of Columbia', :abbreviation => 'DC' },
], :without_protection => true)


puts 'CREATING CONGRESSIONAL DISTRICTS, REPRESENTATIVE OFFICES'

for i in 1..15 do
  CongressionalDistrict.create([
    { :id => i, :state_id => 22, :district_number => i },
  ], :without_protection => true)
  Office.create([
    { :id => i, :name => "U.S. Representative", :polity_id => i, :polity_type => "CongressionalDistrict" }
  ], :without_protection => true)
end

Official.create([
  { :id => 1, :name => "John Dingell", :email => "dingall@house.gov" }
], :without_protection => true)


OfficialTenure.create([
  { :id => 1, :official_id => 1, :office_id => 15, :from_date => "2000-01-20", :to_date => "2015-01-20" }
], :without_protection => true)



puts 'CREATING ROLES'
Role.create([
  { :name => 'admin' }, 
  { :name => 'user' }, 
  { :name => 'VIP' }
], :without_protection => true)


puts 'SETTING UP DEFAULT USER LOGIN'
user1 = User.create! :name => 'Joe Blow', :email => 'joe@blow.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user1.name
user2 = User.create! :name => 'Jane Blow', :email => 'jane@blow.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user2.name
user1.add_role :admin
user2.add_role :VIP


puts 'ADDING USERS TO GROUPS'

UserGroup.create([
 { :id => 1, :user_id => user1.id, :group_type => "Official", :group_id => 1 }
], :without_protection => true )


puts 'CREATING ISSUES'

Issue.create([
  { :id => 1, :title => "Bridge to Canada", :poller_type => 'Office', :poller_id => 1 }
], :without_protection => true )

puts 'CREATING QUICK POLLS'

QuickPoll.create([
  { :id => 1, :issue_id => 1, :title => "Should the bridge to Canada be built?", :body => "Should $3.7 gazillion dollars be spent on a bridge to Canada?",
    :start_time => Date.parse("01 Jan 2012"), :end_time => Date.parse('01 Jan 2013'), :poll_workflow_state_id => 2 }
], :without_protection => true )

QuickPollOption.create([
  { :id => 1, :quick_poll_id => 1, :text => "Yes", :value => 1 },
  { :id => 2, :quick_poll_id => 1, :text => "No", :value => 2 }
], :without_protection => true )




  


