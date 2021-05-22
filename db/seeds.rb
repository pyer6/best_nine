require 'csv'

CSV.foreach("/Users/fengjianlengfu/Downloads/Tigers20210522084508.csv", headers: true) do |row|
  Player.create!(
    number: row[0].to_i,
    player_name: row[1],
    hand: row[2],
    bat: row[3],
    field: row[4],
    team: row[5],
    league: row[6]
  )
  puts row[1]
end

puts "Finish!"