class PracticeSchedule < ActiveRecord::Base
  belongs_to :user

  validates :practice_hours_per_day, numericality: true
  validates :user_id, presence: true
  validates :is_completed, presence: true

  HOURS_IN_A_DAY = 24

  # assumes difficulty level of 0 (easy), 1 (medium), 2 (hard)
  def practice_hours_per_day(days_til_gig, difficulty)
    # Examples: 10 days til gig. Easy. => Practice: .5 hours per day.
    # 10 days til gig. Hard. => Practice 2.5 hours per day.
    (days_til_gig / 20) + difficulty
  end

end
