class KantoTrains::Tokyu
  def self.toyoko_stations 
    File.open("./data/tokyu/toyoko.json") do |file|
      JSON.load(file)
    end
  end
end