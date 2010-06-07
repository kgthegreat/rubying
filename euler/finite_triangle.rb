def readfile
  file = File.open("triangle.txt","r")
  puts file.readline
  puts file.readline
end

readfile
