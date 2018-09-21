feature 'birthdays' do
  scenario 'initial test for getting the ball rolling :)' do
    visit_main
    birthday_true
    expect(page.has_css?('form.form'))
  end
end
