require 'tubular-faker'

10.times do

user = User.create(email: TubularFaker.email, name: TubularFaker.name , password: "123" )

gig1 = Gig.create(date: "5/6/2015", time: "8:00", name: TubularFaker.company, difficulty: 0,user_id: user.id)

user.gigs << gig1

gig2 = Gig.create(date: "6/16/2015", time: "12:00", name: TubularFaker.company, difficulty: 1, user_id: user.id)

user.gigs << gig2

gig3 = Gig.create(date: "4/25/2015", time: "1:00", name: TubularFaker.company, difficulty: 2, user_id: user.id)

user.gigs << gig3

gig1.practice_schedules.create(user_id: user.id, gig_id: gig1.id)
gig2.practice_schedules.create(user_id: user.id, gig_id: gig2.id)
gig3.practice_schedules.create(user_id: user.id, gig_id: gig3.id)

end