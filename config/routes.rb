Rails.application.routes.draw do
  root 'sses#index'
  get 'sses/stream'
end
