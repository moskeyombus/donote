Rails.application.routes.draw do
  get 'transactions/new'

  get 'transactions/create'

  get 'songs/new'

  get 'songs/create'

  get 'songs/destroy'

  get 'playlists/create'

  get 'playlists/destroy'

  get 'payment_methods/new'

  get 'payment_methods/create'

  get 'payment_methods/destroy'

  get 'fans/new'

  get 'fans/create'

  get 'fans/destroy'

  get 'artists/new'

  get 'artists/create'

  get 'artists/destroy'

  get 'artists/index'

  get 'albums/new'

  get 'albums/create'

  get 'albums/destroy'

  get 'albums/index'

  devise_for :users
  root to: "site#index"
end
