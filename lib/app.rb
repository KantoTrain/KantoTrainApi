# frozen_string_literal: true

require 'grape'
require "json"

class KantoTrainApi < Grape::API
  format :json
  get '/' do
    { 'hello': 'world', 'params': params }
  end

  format :json
  get '/toyoko' do
    File.open("./data/toyoko.json") do |file|
      JSON.load(file)
    end
  end
end
