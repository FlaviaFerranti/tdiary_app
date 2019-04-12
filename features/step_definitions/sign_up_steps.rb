
Given("I want to visit the web app") do
    visit('http://localhost:3000/')
end

And ("I want to sign up") do
    click_link('Sign up!')
end

Then("I should be in the sign up path") do
    expect(page).to have_content("Sign up")
end

And("I want to fill the form with valid information") do
    fill_in('name', with: 'User')
    user_email='traveldiarywebapp@gmail.com'
    fill_in "user[email]" , :with => user_email
    fill_in "user[nickname]" , :with => "nickname"
    fill_in "user[password]" , :with => "password"
    fill_in "user[password_confirmation]", :with => "password"
    click_button('Sign up')
end
