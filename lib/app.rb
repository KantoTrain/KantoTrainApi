# frozen_string_literal: true

require 'grape'
require "json"
require "kanto_trains/tokyu.rb"

class KantoTrainApi < Grape::API
  format :json
  get '/' do
    { 'hello': 'world', 'params': params }
  end

  format :json
  get '/tokyu/toyoko' do
    KantoTrains::Tokyu
  end
end
