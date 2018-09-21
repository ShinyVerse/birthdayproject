feature 'birthday_page' do
  scenario 'if user enters a birthday that is today it shows happy birthday' do
    visit_main
    birthday_true
    expect(page).to have_content("Happy Birthday Misty!")
  end
end
