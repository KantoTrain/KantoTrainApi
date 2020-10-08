# frozen_string_literal: true

require 'grape'
require 'json'
Dir['./lib/kanto_trains/*.rb'].each do |file|
  require file
end

class KantoTrainApi < Grape::API
  format :json
  get '/' do
    { 'hello': 'world', 'params': params }
  end

  format :json
  get '/tokyu/toyoko' do
    Tokyu::Toyoko.stations
  end
end
