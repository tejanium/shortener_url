Rails.application.routes.draw do
  root 'shorteners#index'

  post '/' => 'shorteners#create'
end
