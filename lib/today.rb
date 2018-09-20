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

  def today?
    (day == now_day && month == now_month)
  end

  def countdown_days
    date = DateTime.now.to_date
    b = Date.parse("20/09/2018")
    a = Date.parse("19/09/2019")
    (a - b).to_i
  end
end
