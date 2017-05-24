def bubble_sort!(arr)
  size = arr.size
  swapped = false
  0.upto(size - 2) do |index|
    next if arr[index] <= arr[index + 1]
    arr[index], arr[index + 1] = arr[index + 1], arr[index]
    swapped = true
  end
  
  bubble_sort!(arr) if swapped
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)