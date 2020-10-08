# frozen_string_literal: true

class YokohamaSubway
  class GreenLine
    def self.stations
      File.open('./data/yokohama_subway/green_line.json') do |file|
        JSON.load(file)
      end
    end
  end
end
