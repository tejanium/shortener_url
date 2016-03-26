Rails.application.routes.draw do
  root 'shorteners#index'

  post '/'     => 'shorteners#create'
  get  '/:key' => 'shorteners#show', as: :shortened
end
