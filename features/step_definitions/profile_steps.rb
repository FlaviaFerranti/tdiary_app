Given("I am a registred and logged in user")do
    @user = create(:user)
    visit new_user_session_path
    fill_in "user[email]" , :with => @user.email
    fill_in "user[password]", :with => @user.password
    click_button "Log in"
    expect(page).to have_content(@user.name)
end

When("I click on menu Account")do
    click_link "Account"
end

And("on profile")do
    click_link "Profile"
end

Then("I am redirect to my profile")do
    expect(page).to have_content(@user.nickname)
end
