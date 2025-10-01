Rails.application.routes.draw do
  root 'hello#index'
  get 'hello', to: 'hello#index'
end
