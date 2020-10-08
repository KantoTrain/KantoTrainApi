# frozen_string_literal: true

require 'grape'
require "json"

class Station 
  def self.toyoko 
    File.open("./data/toyoko.json") do |file|
      JSON.load(file)
    end
  end
end

class KantoTrainApi < Grape::API
  format :json
  get '/' do
    { 'hello': 'world', 'params': params }
  end

  format :json
  get '/toyoko' do
    Station.toyoko
  end
end
