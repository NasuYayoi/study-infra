Rails.application.routes.draw do
  devise_for :users
  root 'contents#index'
  resources :contents, only: [:index]
  resources :users, only: [:show] do
    resources :memos
  end

  get 'contents/what_infra'
  get 'contents/linux'
  get 'contents/server'
  get 'contents/network'
  get 'contents/virtualization'
  get 'contents/experience'

end
