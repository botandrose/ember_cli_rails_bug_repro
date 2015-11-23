feature "User views", js: true do
  scenario "Ember app" do
    visit "/"

    expect(page).to have_text("HELLO WORLD")
  end
end
