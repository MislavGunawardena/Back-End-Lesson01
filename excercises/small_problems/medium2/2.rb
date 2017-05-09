# Everytime alphabetic characters are involved in a problem, I shoul pay
# attention to the case (upper/lower) of characters, and whether it is necessary
# to covert characters from lower to upper or vice versa. This is specially true
# when characters are being compared to one another.

# Pry pays off once again! I should seriously make using it more routine, not
# just something I do once I fail to figure out the problem by scanning code
# and tinckering with it.

require 'pry'
LETTER_BLOCKS = [['B','O'],['X','K'],['D','Q'],['C','P'],['N','A'],['G','T'],
                 ['R','E'],['F','S'],['J','W'],['H','U'],['V','I'],['L','Y'],
                 ['Z','M']].freeze
                 
def find_block(blocks, chr)
  block_index = nil
  blocks.each_with_index do |block, index|
    if block.include?(chr.upcase)
      block_index = index
      break
    end
  end
  block_index
end
                  
def block_word?(word)
  available_blocks = LETTER_BLOCKS.dup
  word.each_char do |chr|
    block_index = find_block(available_blocks, chr)
    return false unless block_index
    available_blocks.delete_at(block_index)
  end
  true
end

p block_word?('abcd')
p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
p block_word?('BATCHn') == false
p block_word?('BUTC') == true
p block_word?('jestw') == false