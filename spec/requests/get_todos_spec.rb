# frozen_string_literal: true

require 'rails_helper'

describe 'A GET request to \'/\'', type: :request do
  before do
    create_list(:todo, 10)
    get '/'
  end

  it 'sends a non-empty JSON' do
    json = JSON.parse(response.body)
    expect(json.size).to eq(10)
  end

  it 'returns status code 200 OK' do
    expect(response).to have_http_status(:ok)
  end
end
