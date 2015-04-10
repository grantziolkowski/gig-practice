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

Models:

User
  has_many practice_schedules
  @life_schedule

PracticeSchedule
  belongs_to user


Band (for multi-user mode)
  has_many users
