feature 'birthday_page' do
  scenario 'if user enters a birthday that is today it shows happy birthday' do
    visit '/'
    fill_in 'username', with: "Misty"
    fill_in 'day', with: Time.now.strftime('%d')
    select Time.now.strftime('%B'), :from => 'month'
    find_button('Go!').click
    expect(page).to have_content("Happy Birthday Misty!")
  end
end
