def remove_vowels(arr)
 arr.map do |str|
   str.delete 'aeiouAEIOU'
 end
end
      
puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
puts remove_vowels([]).inspect
puts remove_vowels(['', 'lalajahaga', 'retbdjclodj']).inspect
      
