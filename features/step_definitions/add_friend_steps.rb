And /^that I visit the homepage$/ do
  visit root_path
end

And /^I enter "([^"]*)"$/ do |user|
  @user = get_user(parse_name(user))
  within("#add_friend") do
    fill_in 'Name', :with => @user.name
    fill_in 'Latitude', :with => @user.latitude
    fill_in 'Longitude', :with => @user.longitude
    click_button 'Add friend'
  end
end

And /^I should see a '([^']*)' notice$/ do |msg|
  page.should have_content(msg)
end

And /^"([^"]*)" should be listed$/ do |name|
  page.should have_content(name)
end

And /^"([^"]*)" should not be listed$/ do |name|
  page.should_not have_content(name)
end
