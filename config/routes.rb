Rails.application.routes.draw do
  root to: 'calendars#index'
  get 'home/index'
  devise_for :users, :controllers => {
    :omniauth_callbacks =>  "users/omniauth_callbacks"
  }

  devise_scope :user do
    get '/users/log_out' => 'devise/sessions#destroy'
  end
end
