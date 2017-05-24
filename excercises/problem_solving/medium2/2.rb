# Method: block_word?
# Argument: string, contains a word. word
# Side effects: None
# Return: Boolean. true if the blocks can be used to spell the word. false
#         otherwise.
# Edge cases:
#   block_word?('') == true
# 
# Algorithm:
#   word <= argument
#   1) blocks = [%w(b o), %w(x k), %w(d q), %w(c p), %w(n a), %w(g t),
#                %w(r e), %w(f s), %w(j w), %w(h u), %w(v i), %w(l y),
#                %w(z m) ]
#   2) Go through each character of word:
#        convert character to downcase
#        if there is a block containing that character:
#          remove that block from blocks 
#        otherwise:
#          return false
#   3) return true

def block_word?(word)
  blocks = [%w(b o), %w(x k), %w(d q), %w(c p), %w(n a), %w(g t),
            %w(r e), %w(f s), %w(j w), %w(h u), %w(v i), %w(l y),
            %w(z m)]
  word.each_char do |chr|
    matching_block = blocks.find do |block|
      block.include?(chr.downcase)
    end
    if matching_block
      blocks.delete(matching_block)
    else
      return false
    end
  end
  
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
p block_word?('')

# Notes: I should update the description of the algorithm as soon as I notice
# that such an update is necessary. Updating 'in my mind' while leaving the
# written description unchanged could cause errors and confusion.
# In this problem, while writing the ruby code, I realised that the block
# variable chr should always be converted to it's lower case version. However,
# I kept kept that in mind and continued coding without updating the written
# description of the algorithm. Then I actually forgot about that until I was
# going through the program one last time!
# 
# On the plus side, I really like the way I stuck to engligh entences in
# the algorithm! That's a big improvement!
