#see all practice schedules

get '/practice' do

@practice = PracticeSchedule.All


erb '/'
end

#create a new practice_schedule

get '/practice/new' do

end

post '/practice' do

end

#update a practice_schedule

get '/practice/:id/edit' do |id|

end

#get a single practice schedule

get '/practice/:id' do |id|

end


#delete a single practice schedule

get '/practice/:id' do |id|

end

