# In the gsub method, the pattern has to be a regular expression.
def remove_vowels(arr)
 arr.map { |str| str.gsub(/[aeiou]/i, '') }
end
      
puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
puts remove_vowels([]).inspect
puts remove_vowels(['', 'lalajahaga', 'retbdjclodj']).inspect
      
