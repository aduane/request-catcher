Rails.application.routes.draw do
  match '/', to: 'requests#index', via: [:get]
  match '/*path', to: 'requests#create', via: [:get, :put, :post]
end
