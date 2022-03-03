
def sort(array, sorted = [])
  if array.length < 2
    array
  elsif array[0][0] == nil || array[1][0] == nil
    sorted << array.flatten
  elsif array[0][0] < array[1][0]
    sorted << array[0][0]
    array[0].shift
    sort(array, sorted)
  elsif array[1][0] < array[0][0]
    sorted << array[1][0]
    array[1].shift
    sort(array, sorted)
  end
sorted.flatten
end 

def merge_sort(array)
sorter = []

if array.length < 2
  array
else
  p sorter << merge_sort(array[0..array.length/2-1])
    sort(sorter)
  p sorter << merge_sort(array[array.length/2..array.length-1])
    sort(sorter)
end 
end 

p merge_sort([1, 2, 3, 4, 5, 6, 7, 8])