def visit_main
  visit '/'
  fill_in 'username', with: "Misty"
end

def birthday_true
  fill_in 'day', with: Time.now.strftime('%d')
  select Time.now.strftime('%B'), :from => 'month'
  find_button('Go!').click
end

def birthday_false
  tomorrow = Time.now + 24*60*60
  fill_in 'day', with: tomorrow.strftime('%d')
  select Time.now.strftime('%B'), :from => 'month'
  find_button('Go!').click
end
