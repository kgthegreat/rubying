def fetch_list_of_names
  namelist = []
  puts "Enter names in the following format: firstname lastname email\n"
  while true
    if gets.chomp == 'stop'
      break
    else
      namelist << gets.chomp
    end
  end
  return namelist
end

def show_names(namelist)
  namelist.size
  namelist.each do |name|
    puts name
  end
end

show_names(fetch_list_of_names)
#fetch_list_of_names
