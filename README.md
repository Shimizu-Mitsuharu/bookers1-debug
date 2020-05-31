①config/root.rbに以下を追記
root :to => 'books#index'
get 'books' => 'books#new', as: 'books'

