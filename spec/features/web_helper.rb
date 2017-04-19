def list_space
  visit('/spaces/new')
  fill_in :space_name, with: "JJ's sexy pad"
  fill_in :description, with: "JJ's sexy pad is nice!"
  fill_in :price, with: 5000
  fill_in :start_date, with: "30/04/2001"
  fill_in :end_date, with: "30/05/2001"
  click_button "list space"
end
