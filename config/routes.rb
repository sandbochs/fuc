FuckedUpCards::Application.routes.draw do
  root to: 'card_sets#index'

  scope '/api' do
    get '/black_cards' => 'black_cards#index'
    get '/white_cards' => 'white_cards#index'
  end
end
