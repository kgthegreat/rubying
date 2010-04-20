def my_timeline (year)

  case year

    when 1984

    "born"

    when 1990..2002

    "school"

    when 2003..2006

    "engineering"

    when 2006..2009

    "job"

    else

    "No information about this year"

  end

end

opus_magnum = true

def save_hannah
  success =  opus_magnum
end



puts "for which year wud you want to know"
year = gets.chop.to_i
puts my_timeline(year)
