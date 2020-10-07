require './lib/app.rb' # hello.rbが同じディレクトリに格納されていること
run Rack::Cascade.new [KantoTrainApi]