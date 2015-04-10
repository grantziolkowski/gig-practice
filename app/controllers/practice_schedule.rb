#see all practice schedules for all users

get '/practice' do

@practice = PracticeSchedule.All

erb :'practice/index'

end

#get a single practice schedule for 1 user
get '/practice/:id' do |id|

end

# get all practice schedules for the current user
get '/practice/:user_id' do |user_id|


end

#create a new practice_schedule
get '/practice/new' do

erb :'/practice/new'

end

post '/practice' do

@project = Project.create(params[:schedule])

redirect '/practice'

end



#update a practice_schedule

get '/practice/:id/edit' do |id|

end

#delete a single practice schedule

delete '/practice/:id' do |id|

end

