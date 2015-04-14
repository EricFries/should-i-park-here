require 'feature_helper'

RSpec.feature "Search Parking by Address", type: :feature do 

  before(:each) { visit root_path }

  scenario 'user can search by autocompleted address', :js => true do
    fill_in 'violation_address', :with => '11 broadway, m'
    keypress = "var e = $.Event('keydown', { keyCode: 13 }); $('body').trigger(e);"
    page.driver.execute_script(keypress) 
    
    expect(find(:css, '.ui-menu-item').text).to eq("11 BROADWAY, MANHATTAN")
  end

  scenario 'search by autocompleted address returns > 0 total tickets', :js => true do
    fill_in 'violation_address', :with => '11 broadway, m'
    keypress = "var e = $.Event('keydown', { keyCode: 13 }); $('body').trigger(e);"
    page.driver.execute_script(keypress) 
    click_button "SEARCH"

    expect(page).to have_content("Total Violations Last Year: 30")
  end

  scenario 'non-autocomplete search returns 0 total tickets' do 
    fill_in 'violation_address', :with => 'xyz'
    click_button "SEARCH"
    expect(page).to have_content("Total Violations Last Year: 0")
  end

end