Given("I am a signed in user") do
    @user = create(:user)
    visit new_user_session_path
    fill_in "user[email]" , :with => @user.email
    fill_in "user[password]", :with => @user.password
    click_button "Log in"
end

When("I go to my profile") do
    click_link "Account"
    click_link "Profile"
    expect(page).to have_content(@user.nickname)
end

And("I click my wish List")do
    click_button "bottone"
end

Then("I will see the travel I liked")do
    expect(page).to have_content("Wish List")
end
