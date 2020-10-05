Rails.application.routes.draw do
resources :posts

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
    get 'users/sign_out', to: 'devise/sessions#destroy'
  end
end
