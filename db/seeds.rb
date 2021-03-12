require 'csv'

CSV.foreach("/Users/fengjianlengfu/Downloads/c_player_20210306131032.csv", headers: true) do |row|
  Player.create!(
    number: row[0].to_i,
    player_name: row[1],
    hand: row[2],
    bat: row[3],
    field: row[4],
    team: row[5]
  )
  puts row[1]
end

puts "Finish!"