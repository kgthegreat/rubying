def get_array
  puts "Enter your array, each element seperated by a comma"
  array = gets.split(',')
end

def sort_array(array)
  integer_array = []
  for element in array
    integer_array << element.to_i
  end
  #  array.each {|x,integer_array| integer_array << x.to_i }
  integer_array.sort
end

def get_number_to_be_searched
  puts "Enter the number to be searched"
  gets.to_i
end

def get_middle_element(array)
  array[array.size/2]
end

def binary_search(sorted_array, number_to_be_searched)
  size = sorted_array.size
  if number_to_be_searched < sorted_array[0] || number_to_be_searched > sorted_array[size-1]
    puts "Number not found"
    return
  end
  middle_index = size/2
  middle_element = sorted_array[middle_index]
  needle = middle_index
  if middle_element === number_to_be_searched
    puts "the position of the sought number is #{middle_index/2}"
    return
  elsif middle_element > number_to_be_searched
    sorted_array = sorted_array.slice(0,middle_index)
  elsif middle_element < number_to_be_searched
    sorted_array = sorted_array.slice(middle_index,size)
    needle=+middle_index
  end
  binary_search(sorted_array, number_to_be_searched)
end


sorted_array = sort_array(get_array)
puts sorted_array
number_to_be_searched = get_number_to_be_searched
#puts number_to_be_searched
binary_search(sorted_array,number_to_be_searched)
