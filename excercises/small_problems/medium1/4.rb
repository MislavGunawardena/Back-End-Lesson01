# Algorithm:
#
# for all switches, i: 1...1000 :
#   switch(i) = false
# 
# for each round, r: 1...1000 :
#   position = r
#   while position <= 1000 : 
#     toggle switch(position)
#     position += r
# 


NUMBER_OF_LIGHTS = 1000

def switch_status
  light_status = {}
  1.upto(NUMBER_OF_LIGHTS) { |index| light_status[index] = false }
  
  1.upto(NUMBER_OF_LIGHTS) do |round| # represents each round of toggling
    position = round
    while position <= NUMBER_OF_LIGHTS
      if light_status[position] == false # represents a toggle
        light_status[position] = true
      else
        light_status[position] = false
      end
      position += round
    end
  end
  
  switched_on = light_status.select { |number, status| status == true }
  switched_on.map { |k,v| k }
end

p switch_status