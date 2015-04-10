require 'tubular-faker'

8.times do
  user = User.create(name: TubularFaker.name, email: TubularFaker.email, password: "123")
  user.gigs << Gig.create(date: "5/6/2015", name: TubularFaker.company, difficulty: 0)
  user.gigs << Gig.create(date: "6/16/2015", name: TubularFaker.company, difficulty: 1)
  user.gigs << Gig.create(date: "4/25/2015", name: TubularFaker.company, difficulty: 2)

  schedule1 = PracticeSchedule.create(user_id: user.id, gig_id: gig1.id)
  schedule2 = PracticeSchedule.create(user_id: user.id, gig_id: gig2.id)
  schedule3 = PracticeSchedule.create(user_id: user.id, gig_id: gig3.id)
end

# Bug: Can't shovel a Gig object into a User's gigs. Rollback.
# Bug: Can't assign a Gig to a Schedule object. Calling .gig on a Schedule object returns nil.
