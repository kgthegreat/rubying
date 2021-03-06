#module SecretSanta


  class Person
    attr_reader :firstname,:lastname, :email
    def initialize(firstname,lastname,email)
      @firstname,@lastname,@email = firstname,lastname,email
    end
    def ==(person)
      if person.is_a? Person
        @firstname == person.firstname && @lastname == person.lastname && @email == person.email
      else
        false
      end
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
        person_array = data.split(' ')
        personlist << Person.new(person_array[0],person_array[1],person_array[2])
      end
    end
    return personlist # .sort_by { rand }
  end

  def show_names(personlist)
    #  puts personlist.size
    personlist.each do |person|
      puts person.firstname
    end
  end

  def assign_santa(person_list)
    # santa_person_map = Hash.new
    santa_benefitter_map = []
    leftovers_list = []
    leftovers_map = []
    benefitter_list = person_list.sort_by { rand }
    iterator = person_list.size
    person_list.size.times {|x|
      santa_benefitter_pair = []
      person_list[x-1] = santa
      benefitter_list[x-1] = benefitter
      if(santa.lastname != benefitter.lastname)
        santa_benefitter_pair << person_list[x-1]
        santa_benefitter_pair << random_person_list[x-1]
        santa_benefitter_map << santa_person_pair
      else
        leftovers
      end
    }
  end

# end

#  show_names(fetch_list_of_names)
#fetch_list_of_names
