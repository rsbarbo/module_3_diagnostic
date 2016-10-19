require 'rails_helper'

RSpec.feature "User can see 10 closest stations within 6 miles" do
  describe "when user gives a zip code" do
    it "expect to see 10 closest stations within 6 miles" do
      # As a user
      # When I visit "/"
      visit '/'
      # And I fill in the search form with 80203
      within('.search-field') do
        fill_in "q", with: "80203"
        # And I click "Locate"
        click_on "Locate"
        # Then I should be on page "/search" with parameters visible in the url
        expect(current_path).to eq('/search')
        # Then I should see a list of the 10 closest stations within 6 miles sorted by distance
        expect(page).to have_content("Result")
        # And the stations should be limited to Electric and Propane
        expect(page).to have_content("Electric and Propane Stations")
        # And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
        expect(page).to have_content("Station Name:")
        expect(page).to have_content("Address:")
        expect(page).to have_content("Fuel Types:")
        expect(page).to have_content("Distance:")
        expect(page).to have_content("Access Times:")
      end
    end
  end
end
