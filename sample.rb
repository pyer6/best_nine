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
