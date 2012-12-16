class HomeController < ApplicationController

  def index
    @users = User.all
  end

  def home
    @users = User.all
    
    # todo: fix up this horribly inefficient code

    @state_offices = Office.where(:polity_type => 'State', :polity_id => current_user.state_id ) 
    @congressional_offices = Office.where(:polity_type => 'CongressionalDistrict', :polity_id => current_user.congressional_district_id ) 
    @municipal_offices = Office.where(:polity_type => 'Municipality', :polity_id => current_user.municipality_id ) 
    @county_offices = Office.where(:polity_type => 'County', :polity_id => current_user.county_id )
    
  end



end
