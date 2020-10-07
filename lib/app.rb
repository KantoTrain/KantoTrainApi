# frozen_string_literal: true

require 'grape'

class KantoTrainApi < Grape::API
  format :json
  get '/' do
    { 'hello': 'world', 'params': params }
  end
end
