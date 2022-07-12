# Build a method #bubble_sort that takes an array and returns a sorted array. 
# It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).
# > bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]

# Algorithm:
# Iterate through the array starting i 0, if first element bigger than second element swap them
# then continue to second and third element and repeat the process, repeat until array is sorted
unsorted_array = [4,3,78,2,0,2]

def bubble_sort(array)
  for i in array do
    array.each_with_index.reduce() do |memo, (element, i)| 
      if memo[0] > element
        array[i] = memo[0]
        array[i-1] = element
      end
        memo = array[i..i+1]
    end
  end
  array
end


p bubble_sort(unsorted_array)