require './lib/app.rb'
run Rack::Cascade.new [KantoTrainApi]
