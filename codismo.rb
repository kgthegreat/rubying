require 'd:/rubyworkspace/rough.rb'

print "Enter your new message: "
mes = gets
$code_words.each do |real , code|
  mes.gsub!(real,code)
end


# save the gibberish to another file

print "enter a name to save this msg: "
file_name = gets.strip
File::open("idea-" + file_name + ".txt", 'a') do |f|
  f << mes
end


print "this is the garbled message: "
puts File::read("idea-" + file_name + ".txt").strip 

