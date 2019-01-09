Rails.application.routes.draw do
  devise_for :users
  root 'contents#index'
  resources :contents, only: [:index]
  resources :users, only: [:show] do
    resources :memos
  end

  #contents
  # infra
  get 'contents/what_infra'
  get 'contents/server'
  get 'contents/network'
  get 'contents/os'
  get 'contents/storage'
  get 'contents/virtualization'
  get 'contents/cloud'

  # linux
  get 'contents/linux'
  get 'contents/env_const'
  get 'contents/command'
  get 'contents/ssh'

  # other
  get 'contents/lightning_talk'
  get 'contents/ses_etc'
  get 'contents/experience'

end
