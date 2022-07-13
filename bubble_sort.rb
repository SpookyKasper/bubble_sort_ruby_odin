# Build a method #bubble_sort that takes an array and returns a sorted array. 
# It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).
# > bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]

# Algorithm:
# Iterate through the array starting i 0, if first element bigger than second element swap them
# then continue to second and third element and repeat the process, repeat until array is sorted

def bubble_sort(array)
  not_sorted = true
  range_to_sort = array.length 
  while not_sorted do
    swaps = 0
    array[0..range_to_sort].each_with_index.reduce() do |memo, (element, i)| 
      if memo[0] > element
        array[i] = memo[0]
        array[i-1] = element
        swaps += 1
      end
      array[i,i+1]
    end
    range_to_sort -= 1
    if swaps == 0 
      not_sorted = false 
    end
  end
  array
end

unsorted_array = [4,3,78,2,0,2]
test_array = [1,2,3,4,5]
scnd_test_array = [5,4,3,2,1,0]

p bubble_sort(unsorted_array)
p bubble_sort(test_array)
p bubble_sort(scnd_test_array)