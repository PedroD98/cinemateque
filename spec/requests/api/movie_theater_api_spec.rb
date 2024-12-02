require 'rails_helper'

describe 'Movie Theater API' do
  context 'GET api/movie_theater/:id' do
    it 'mostra detalhes do cinema' do
      movie_theater = FactoryBot.create(:movie_theater, name: 'Cine Paradiso')
      room = FactoryBot.create(:room)

      get "/api/movie_theaters/1"

      json_response = JSON.parse(response.body)
      expect(response.status).to eq 200
      expect(response.content_type).to include 'application/json'
      expect(json_response['movie_theater_details']['name']).to eq 'Cine Paradiso'
      expect(json_response['movie_theater_details']['city']).to eq 'Brasília'
    end
  end
end