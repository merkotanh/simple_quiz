Rails.application.routes.draw do
  root 'pages#index' # pages - controller(ruby class) index - method

  resources :questions#, only: %i[index new edit create update destroy show]
  # this is the same as below
  # get '/questions',  to:  'questions#index' # localhost/questions
  # get '/questions/new', to: 'questions#new'
  # get '/questions/:id/edit', to: 'questions#edit'
  # post  '/questions', to: 'questions#create'

end
