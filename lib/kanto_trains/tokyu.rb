class Tokyu
  class Toyoko
    def self.stations
      File.open('./data/tokyu/toyoko.json') do |file|
        JSON.parse(file)
      end
    end
  end
end
