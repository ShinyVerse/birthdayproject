require 'Date'

class Today
  attr_reader :day, :month
  def initialize(day, month)
    @day = day
    @month = month
  end

  def countdown_days
    today = DateTime.now
    date = ("#{today.year}/#{today.month}/#{today.mday}")
    birthday = ("#{today.year}/#{month}/#{day}")
    parsed_date = Date.parse(date)
    parsed_birthday = Date.parse(birthday)
    (parsed_birthday - parsed_date).to_i < 0 ? (parsed_birthday - parsed_date).to_i + 365 : (parsed_birthday - parsed_date).to_i
  end

  def leaper?
    "#{month}/#{day}" == "02/29"
  end
end
