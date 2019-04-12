Given("I am a registred user") do
    visit ('http://localhost:3000/')
end

And("I am on the home page") do
    expect(page).to have_content("Sign up!")
end

When /I click on "Log in"/ do
    click_link "Log in"
end

Then("I am an authenticated user") do
	@user = create(:user)
    visit new_user_session_path
    fill_in "user[email]" , :with => @user.email
    fill_in "user[password]", :with => @user.password
    click_button "Log in"
    expect(page).to have_content(@user.name)
end
