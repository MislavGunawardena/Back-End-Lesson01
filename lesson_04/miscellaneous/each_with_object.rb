
crew = { Ryan: 34}
friends = ['Sam', 'Pete', 'Charlie']
object1 = friends.each_with_object(crew) do |friend|
            crew[friend] = rand(20..60)
          end
          
puts "*#{object1.inspect}#{object1.class}"
puts crew
puts "-----"

winners = {mike: 99}

players = {sam: 82, nathan: 95, jordan: 98, peter: 91}

updated_winners = players.each_with_object(winners) do |player, winners|
                    winners[player[0]] = player[1] if player[1] >= 95
                  end
                
puts "#{updated_winners}"
puts winners
puts '-----'

not_winners = {}

players.each_with_object(not_winners) do |(player, points), not_winners|
  not_winners[player] = points if points < 95
end

puts not_winners