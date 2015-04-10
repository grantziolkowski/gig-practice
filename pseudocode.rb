User Story:

I want to be able to enter the date and time of my gig.
I want to be able to enter my schedule for the week:
  -- what time I wake up
  -- what time I go to sleep
  -- mandatory appointments (like work or school)
I want to be assigned practice times every day before the gig.
I want the amount of practice per day to be longer if the gig is sooner.
I want my current level of preparedness to modify the amount of practice time assigned.
I want to be able to enter what times of day my practice space is open.
I want to see which rehearsal is the dress rehearsal.
I want to see a running count of how many days/hours left until the gig.

Single-User Mode:
  Just me & my schedule.

Multi-User Mode:
  Coordinate practice times with other users.
  Create "bands" that contain multiple users, and cross reference their availability.

--------------

User Billy has a Gig in 9 days. The gig is level 4 difficulty. How many hours per day should Billy practice?

Models:

User
  has_many practiceschedules
  has_many gigs
  :email
  :password
  :name

PracticeSchedule
  belongs_to user

  HOURS_IN_A_DAY = 24

  def practice_hours_per_day
  end


Gig
  belongs_to user
  datetime -- DateTime
  difficulty -- integer 1-5

  # subtract the date of the gig from Time.now
  def days_til_gig
  end




# optional extra features
Band (for multi-user mode)
  has_many users
