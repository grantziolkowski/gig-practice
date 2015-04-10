require 'tubular-faker'

10.times do

user = User.create(email: TubularFaker.email, name: TubularFaker.name , password: "123" )

user.gigs << Gig.create(date: "5/6/2015", time: "8:00", name: TubularFaker.company, difficulty: 0,user_id: user.id)

gig1 = user.gigs.last

user.gigs << Gig.create(date: "6/16/2015", time: "12:00", name: TubularFaker.company, difficulty: 1, user_id: user.id)

gig2 = user.gigs.last

user.gigs << Gig.create(date: "4/25/2015", time: "1:00", name: TubularFaker.company, difficulty: 2, user_id: user.id)

gig3 = user.gigs.last

gig1.practice_schedules.create(user_id: user.id)
gig2.practice_schedules.create(user_id: user.id)
gig3.practice_schedules.create(user_id: user.id)

end