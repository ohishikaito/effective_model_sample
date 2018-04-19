Rails.application.routes.draw do
  root 'tasks#index'
  resources :tasks, only: [:index, :create] do
    post 'make_task_finished', on: :member
  end
end
