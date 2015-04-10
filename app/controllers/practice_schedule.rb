#see all practice schedules

get '/practice' do

@practice = PracticeSchedule.All

erb :'practice/index'

end

#create a new practice_schedule
get '/practice/new' do

erb :'/practice/new'

end

post '/practice' do

@project = Project.create(params[:schedule])

redirect '/practice'

end

#get a single practice schedule

get '/practice/:id' do |id|

end

#update a practice_schedule

get '/practice/:id/edit' do |id|

end

#delete a single practice schedule

delete '/practice/:id' do |id|

end

