# Put your own destination url
logs = File.open("/Users/YourComputerName/Desktop/logs.txt")

# This regex will try it's best to grab URL's from your chat log file
regexp = /(https?:\/\/([-\w\.]+)+(:\d+)?(\/([\w\/_\.]*(\?\S+)?)?)?)/

# Where we will append urls
arr = []

# Get each line from document and filter out URL's, put in arr
logs.each_line do |line|

  
  str = line.scan(regexp)
  
  if str.length >= 1
    arr << str.first[0]
  end

end

# Make new document, loop through each arr element and put to file.
File.open("/Users/TERMITE/Desktop/logs2.txt", "w+") do |f|
  arr.each { |element| f.puts(element) }
end

# Close logfile
logs.close