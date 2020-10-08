class Tokyu
  class Toyoko
    def self.stations
      File.open('./data/tokyu/toyoko.json') do |file|
        JSON.load(file)
      end
    end
  end
end
