require 'rails_helper'

# As a user
# When I visit "/"
# And I fill in the search form with 80203
# And I click "Locate"
# Then I should be on page "/search" with parameters visible in the url
# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
```


http://developer.nrel.gov//api/alt-fuel-stations/v1/nearest.json?api_key=EWGaKWN0GootN2zm5w8mhILC4Q0iaAfxqPLgVOeg&location=80203&fuel_type=ELEC,LPG&limit=200&radius=6
