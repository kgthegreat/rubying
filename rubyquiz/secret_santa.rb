def fetch_list_of_names
  puts "Enter names in the following format: firstname lastname email\n"
  namelist << gets until gets == 'n'

end

def show_names(namelist)
  namelist.each do |name|
    puts name
  end
end

show_names(fetch_list_of_names)
#fetch_list_of_names
