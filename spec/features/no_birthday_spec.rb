feature 'not a birthday day' do
  scenario 'shows countdown to birthday' do
    visit_main
    birthday_false
    expect(page).to have_content("Only 1 days until your birthday!")
  end
end
