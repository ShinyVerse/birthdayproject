require 'Date'

class Today
  attr_reader :day, :month, :days_countdown, :now_day, :now_month
  def initialize(day, month)
    @day = day
    @month = month
    @days_countdown = 0
    @now_day =  Time.now.strftime('%d')
    @now_month = Time.now.strftime('%-m')
  end


  def countdown_days
    today = DateTime.now
    date = ("#{today.mday}/#{today.month}/#{today.year}")
    birthday = ("#{day}/#{month}/#{today.year}")
    parsed_date = Date.parse(date)
    parsed_birthday = Date.parse(birthday)
    (parsed_birthday - parsed_date).to_i < 0 ? (parsed_birthday - parsed_date).to_i + 365 : (parsed_birthday - parsed_date).to_i
  end
end
