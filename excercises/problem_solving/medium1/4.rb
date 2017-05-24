# switches 1-1000 initially off
# round 1: turn 1, 2, 3, ....,1000 on, toggle all swiches
# round 2: turn off 2, 4, 6, 1000, toggle every 2nd switch
# round 3: turn on 3, 6, 9, ......,999 toggle every 3rd swich
# .....
# round 1000: toggle the switch at position 1000
#
# User input: none
# Display: Should display a message indicating which lights are on at the
#          end of the process
# 
# Algorithm:
#   1) switches = {}
#   2) set keys 1, 2, 3, ...., 1000 to the value false
#   3) initial_switch = 1
#   4) loop:
#        a)index = initial_switch
#        b)loop 
#            toggle switch at index
#            index += initial_switch
#            break if index > 1000
#        c)initial_switch += 1
#        d)break if initial_switch > 1000
#   5) light_turned_on = select thos keys in switches whose values are still 
#                        on pring a message along with the contents of 
#                        lights_turned_on

def toggle!(group_of_switches, position)
  if group_of_switches[position]
    group_of_switches[position] = false
  else
    group_of_switches[position] = true
  end
end

switches = {}
1.upto(1000) { |index| switches[index] = false }

1.upto(1000) do |initial_switch|
  index = initial_switch
  loop do
    toggle!(switches, index)
    index += initial_switch
    break if index > 1000
  end
end

lights_turned_on = switches.select { |k, v| v }.keys

print "The lights that are turned on are: #{lights_turned_on.join(', ')}\n"




