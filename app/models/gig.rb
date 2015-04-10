class Gig < ActiveRecord::Base
  belongs_to :user
  before_save :days_til_gig

  has_many :practice_schedules # in case of more than one user in a band

  validates :date, presence: true, length: { minimum: 8, maximum: 10}
  validates :days_til_gig, numericality: true
  validates :time, length: { minimum: 4, maximum: 7 }
  validates :difficulty, presence: true, numericality: { only_integer: true }
  validates :difficulty, numericality: { greater_than_or_equal_to: 0 }
  validates :difficulty, numericality: {less_than_or_equal_to: 2}

  def today_date
    DateTime.now
  end

  def parse_date_string
    month = self.date.split('/')[0].to_i
    day = self.date.split('/')[1].to_i
    year = self.date.split('/')[2].to_i
    DateTime.new(year,month,day)
  end

  def subtract_days
     parse_date_string.yday - today_date.yday
  end

  def set_days_til_gig
    if today_date.year == parse_date_string.year
      self.days_til_gig = subtract_days
    else
      account_for_year = parse_date_string.year - today_date.year
      self.days_til_gig = account_for_year * 365 + subtract_days
    end
  end

end
