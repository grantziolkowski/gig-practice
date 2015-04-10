class PracticeSchedule < ActiveRecord::Base

  before_save :set_practice_hours_per_day

  belongs_to :user
  belongs_to :gig

  # validates :gig, presence: true
  # validates :practice_hours_per_day, numericality: true
  # validates :user_id, presence: true
  # validates :is_completed, presence: true

  HOURS_IN_A_DAY = 24

  # assumes difficulty level of 0 (easy), 1 (medium), 2 (hard)
  def set_practice_hours_per_day
    # Examples: 10 days til gig. Easy. => Practice: .5 hours per day.
    # 10 days til gig. Hard. => Practice 2.5 hours per day.
    self.practice_hours_per_day = (self.gig.days_til_gig / 20) + self.gig.difficulty
  end

end
