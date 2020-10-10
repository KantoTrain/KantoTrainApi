# frozen_string_literal: true

require 'json'

company = ''
line_name = ''
station_count = 0
code = ''

ARGV.each_with_index do |argument, i|
  case i
    when 0
      company = argument
    when 1
      line_name = argument
    when 2
      station_count = argument.to_i
    when 3
      code = argument
      json = <<-EOS
[
      EOS
      (0..station_count).each do |num|
        format('%04d', 10)
        json += <<-EOS
  {
    "name": "",
    "code": "#{code}#{format('%02d', num)}"
  },
        EOS
      end
    
      json += ']'
      
      file_path = "./data/#{company}/#{line_name}.json"
      status = FileTest.exist?(file_path) ? 'UPDATED' : 'CREATED'
      File.write(file_path, json)
      puts "[#{status}] #{file_path}"
    else
      raise argument, 'not found'
  end
end
