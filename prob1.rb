require 'csv'

parsed_data = []

CSV.foreach('data.csv', headers: true) do |row|
  parsed_data << row.to_h
end

puts parsed_data.inspect
