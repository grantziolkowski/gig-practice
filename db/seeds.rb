require 'tubular-faker'

8.times do
  user = User.create(name: TubularFaker.name, email: TubularFaker.email, password: "123")
  gig1 = Gig.create(date: "5/6/2015", name: TubularFaker.company, difficulty: 0, user_id: user.id)
  gig2 = Gig.create(date: "6/16/2015", name: TubularFaker.company, difficulty: 1, user_id: user.id)
  gig3 = Gig.create(date: "4/25/2015", name: TubularFaker.company, difficulty: 2, user_id: user.id)

  schedule1 = PracticeSchedule.create(user_id: user.id, gig_id: gig1.id)
  schedule2 = PracticeSchedule.create(user_id: user.id, gig_id: gig2.id)
  schedule3 = PracticeSchedule.create(user_id: user.id, gig_id: gig3.id)
end
