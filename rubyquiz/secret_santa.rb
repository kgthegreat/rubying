class Person
  attr_reader :firstname,:lastname, :email
  def initialize(person)
    @firstname,@lastname,@email = person[0],person[1],person[2]
  end
end

def fetch_list_of_names
  personlist = []
  puts "Enter names in the following format: firstname lastname email\n"
  while true
    data = gets.chomp
    if data == 'stop'
      break
    else
     # puts "adding"+gets.chomp
      personlist << Person.new(data.split(' '))
    end
  end
  return personlist.sort_by { rand }
end

def show_names(personlist)
#  puts personlist.size
  personlist.each do |person|
    puts person.firstname
  end
end

def randomize_array(array)

end

show_names(fetch_list_of_names)
#fetch_list_of_names
