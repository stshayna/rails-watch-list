Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # auto-add "/lists" at the root path
  root to: redirect('/lists')

  # root path remains the same, but links root to lists#index action
  # root to: 'lists#index'

  resources :lists, except: %i[edit update] do
    resources :bookmarks, only: %i[new create]
    resources :reviews, only: :create
  end
  resources :bookmarks, only: :destroy
  resources :reviews, only: :destroy
end
