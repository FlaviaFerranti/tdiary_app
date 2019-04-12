Given("I am a visitor") do
    visit('http://localhost:3000/')
end

And("I have not an account") do
    expect(page).to have_content("Sign up!")
end

Then("I want to be able to register") do
    click_on("Sign up!")
end
