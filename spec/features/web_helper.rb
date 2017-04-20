def list_space(space_name: "JJ's sexy pad", description: "JJ's sexy pad is nice!")
  visit('/spaces/new')
  fill_in :space_name, with: space_name
  fill_in :description, with: description
  fill_in :price, with: 5000
  fill_in :start_date, with: "30/04/2001"
  fill_in :end_date, with: "30/05/2001"
  click_button "list space"
end
