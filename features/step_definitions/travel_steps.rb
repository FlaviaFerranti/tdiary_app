Given ("I am a logged in user") do
    @user = create(:user)
    visit new_user_session_path
    fill_in "user[email]" , :with => @user.email
    fill_in "user[password]", :with => @user.password
    click_button "Log in"
    expect(page).to have_content(@user.name)
end

When("I fill the form with valid information") do
    fill_in "travel[title]" , :with => "title"
    fill_in "travel[location]" , :with => "Rome"
end

And("I click on Create") do
    click_button "Create"
end

Then("I have created a new travel") do
    expect(page).to have_content("1 Travel")
end
