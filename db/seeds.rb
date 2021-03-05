require 'csv'

CSV.foreach("/Users/fengjianlengfu/Downloads/c_fielder_20210304124010.csv", headers: true) do |row|
  Player.create!(
    number: row[0].to_i,
    player_name: row[1],
    hand: row[2],
    bat: row[3],
    team: row[4]
  )
  puts row[1]
end

puts "Finish!"