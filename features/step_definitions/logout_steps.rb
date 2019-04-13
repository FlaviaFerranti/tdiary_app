Given("I am user who logged in") do
    @user = create(:user)
    visit new_user_session_path
    fill_in "user[email]" , :with => @user.email
    fill_in "user[password]", :with => @user.password
    click_button "Log in"
    expect(page).to have_content(@user.name)
end

When("I click on Log out") do
    click_link "Account"
    click_link "Log out"
end

Then("I want to end the session") do
    expect(page).to have_content("Signed out successfully")
end
