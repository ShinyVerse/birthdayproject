feature 'birthdays' do
  scenario 'initial test for getting the ball rolling :)' do
    visit '/'
    fill_in 'username', with: "Misty"
    fill_in 'day', with: Time.now.strftime('%d')
    select Time.now.strftime('%B'), :from => 'month'
    find_button('Go!').click
  end
end
