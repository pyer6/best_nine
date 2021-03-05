require 'csv'

CSV.foreach("/Users/fengjianlengfu/Downloads/c_fielder_20210304124010.csv", headers: true) do |row|

  puts row[0].to_i
  puts row[1]
  puts row[2]
  puts row[3]
  puts row[4]
  puts "================"
end