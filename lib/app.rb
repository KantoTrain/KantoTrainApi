# frozen_string_literal: true

require 'grape'
require "json"
Dir["./lib/kanto_trains/*.rb"].each {|file| require file }

class KantoTrainApi < Grape::API
  format :json
  get '/' do
    { 'hello': 'world', 'params': params }
  end

  format :json
  get '/tokyu/toyoko' do
    Tokyu::Toyoko.stations
  end

  format :json
  get '/tokyu/denen-toshi' do
    Tokyu::DenenToshi.stations
  end
end
