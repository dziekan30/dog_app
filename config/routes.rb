Rails.application.routes.draw do
 namespace :api do

  get '/dogs' => 'dogs#index'

 end
end
