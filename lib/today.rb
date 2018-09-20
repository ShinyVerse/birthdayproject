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
  end

  def countdown_months
    return 12 if (month.to_i == now_month.to_i) && day.to_i < now_day.to_i
    return 0 if month.to_i == now_month.to_i
    months = [month.to_i, now_month.to_i]
   (months.max - months.min)
  end
end
