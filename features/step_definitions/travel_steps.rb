Given ("I am a logged in user") do
    @user = create(:user)
    visit new_user_session_path
    fill_in "user[email]" , :with => @user.email
    fill_in "user[password]", :with => @user.password
    click_button "Log in"
    expect(page).to have_content(@user.name)
end

When("I click on Create") do
    fill_in "travel[title]" , :with => "title"
    fill_in "travel[location]" , :with => "Rome"
    click_button "Create"
    expect(page).to have_content("1 Travel")
end
