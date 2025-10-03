Rails.application.routes.draw do
  root 'hello#index'
  get 'hello', to: 'hello#index'
  
  # GitHub webhooks endpoint
  post "/github_webhooks", to: "webhooks#github"
end
