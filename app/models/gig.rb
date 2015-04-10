class Gig < ActiveRecord::Base
  belongs_to :user

  validates :date, presence: true, length: { minimum: 8, maximum: 10}
  validates :time, length: { minimum: 4, maximum: 7 }
  validates :difficulty, presence: true, numericality: { only_integer: true }
  validates :difficulty, numericality: { greater_than: 0 }
  validates :difficulty, numericality: {less_than: 6}

  def today_date
    DateTime.now
  end

  def parse_date_string
    month = self.date.split('/')[0]
    day = self.date.split('/')[1]
    year = self.date.split('/')[2]
    DateTime.new(year,month,day)
  end

  def subtract_days
     parse_date_string.yday - today_date.yday
  end

  def days_til_gig
    if today_date.year == parse_date_string.year
      subtract_days
    else
      account_for_year = parse_date_string.year - today_date.year
      account_for_year * 365 + subtract_days
    end
  end

end