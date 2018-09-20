feature 'not a birthday day' do
  scenario 'shows countdown to birthday' do
    tomorrow = Time.now + 24*60*60
    visit '/'
    fill_in 'username', with: "Misty"
    fill_in 'day', with: tomorrow.strftime('%d')
    select Time.now.strftime('%B'), :from => 'month'
    find_button('Go!').click
    expect(page).to have_content("Only 1 days until your birthday!")
  end
end
