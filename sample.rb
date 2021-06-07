hash = {"title"=>"aa", "one_position"=>"3", "one_name"=>"2", "two_position"=>"3", "two_name"=>"5",
        "three_position"=>"4", "three_name"=>"6", "four_position"=>"5", "four_name"=>"12",
        "five_position"=>"6", "five_name"=>"3", "six_position"=>"7", "six_name"=>"26", "seven_position"=>"8", "seven_name"=>"7",
        "eight_position"=>"10", "eight_name"=>"32", "nine_position"=>"2", "nine_name"=>"4", "starting"=>"47", "relief"=>"50", "closer"=>"37"}


arr = hash.values[1..-4]
pitcher = hash.values[-3..-1]

odd_num = arr.each_slice(2).map(&:first).push(pitcher)  # {|n| n.first}
even_num = arr.each_slice(2).map(&:last)

puts odd_num
puts "============"
puts even_num
puts "============"

# if(ary.count - ary.uniq.count) != 0
#   puts "False"
# else
#   puts "True"
# end



<tr>
<td>2</td>
<td><%= BestNine::POSITION.key(bestnine.two_position) %></td>
<td><%= @players.find(bestnine.two_name).player_name %></td>
</tr>
<tr>
<td>3</td>
<td><%= BestNine::POSITION.key(bestnine.three_position) %></td>
<td><%= @players.find(bestnine.three_name).player_name %></td>
</tr>
<tr>
<td>4</td>
<td><%= BestNine::POSITION.key(bestnine.four_position) %></td>
<td><%= @players.find(bestnine.four_name).player_name %></td>
</tr> 
<tr>
<td>5</td>
<td><%= BestNine::POSITION.key(bestnine.five_position) %></td>
<td><%= @players.find(bestnine.five_name).player_name %></td>
</tr> 
<tr>
<td>6</td>
<td><%= BestNine::POSITION.key(bestnine.six_position) %></td>
<td><%= @players.find(bestnine.six_name).player_name %></td>
</tr> 
<tr>
<td>7</td>
<td><%= BestNine::POSITION.key(bestnine.seven_position) %></td>
<td><%= @players.find(bestnine.seven_name).player_name %></td>
</tr> 
<tr>
<td>8</td>
<td><%= BestNine::POSITION.key(bestnine.eight_position) %></td>
<td><%= @players.find(bestnine.eight_name).player_name %></td>
</tr> 
<tr>
<td>9</td>
<td><%= BestNine::POSITION.key(bestnine.nine_position) %></td>
<td><%= @players.find(bestnine.nine_name).player_name %></td>
</tr> 
<tr>
<td>先</td>
<td>投</td>
<td><%= @players.find(bestnine.starting).player_name %></td>
</tr>
<tr>
<td>中</td>
<td>投</td>
<td><%= @players.find(bestnine.relief).player_name %></td>
</tr>
<tr>
<td>抑</td>
<td>投</td>
<td><%= @players.find(bestnine.closer).player_name %></td>
</tr>
