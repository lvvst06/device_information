Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :event_logs, controller: 'device_event_logs', only: [:create]
  end
end
