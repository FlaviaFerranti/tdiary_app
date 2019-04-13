Given("I am on Travel Diary") do
    visit root_path
    expect(page).to have_content("Welcome")
end

When("I click on Users")do
    click_link "Users"
end

Then("I will see other users and travels")do
     expect(page).to have_content("Users")
     expect(page).to have_content("Travels")
end
