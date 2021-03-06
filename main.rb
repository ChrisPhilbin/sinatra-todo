require 'sinatra' 
require 'slim'
require 'data_mapper'

get '/' do
  slim :index 
end

post '/' do
  @task =  params[:task]
  slim :task
end

get '/:task' do
  @task = params[:task].split('-').join(' ').capitalize
  slim :task
end
