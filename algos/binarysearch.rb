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
  middle_element = get_middle_element(sorted_array)
  if middle_element === number_to_be_searched
    size = size/2
    puts "the position of the sought number is #{index}"
  elsif middle_element < number_to_be_searched
    sorted_array.slice(index)
  end
end


sorted_array = sort_array(get_array)
puts sorted_array
number_to_be_searched = get_number_to_be_searched
#puts number_to_be_searched
binary_search(sorted_array,number_to_be_searched)
