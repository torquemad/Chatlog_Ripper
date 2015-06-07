require 'pry'
require 'uri'

# Put your own destination url
logs = File.open("/Users/USERNAME/PATHTOLOGFILE/logs.txt")

# This regex will try it's best to grab URL's from your chat log file.
# Returns a collection
regexp = /(https?:\/\/([-\w\.]+)+(:\d+)?(\/([\w\/_\.]*(\?\S+)?)?)?)/

# Where we will append urls
arr = []
# Get each line from document and filter out URL's, put in arr
logs.each_line do |line|

  
  regex_arr = line.scan(regexp)
  
  if regex_arr.length >= 1

    # Uncomment if you want to specify a specific url
    # if regex_arr.first[0].include? "gist.github.com"
      arr << regex_arr.first[0]
    # end

  end


end

# Make new document, loop through each arr element and put to file.
File.open("/Users/USERNAME.PATHTOOUTPUTFILE/clean_logs.txt", "w+") do |f|
  arr.each { |element| f.puts(element) }
end

# Close logfile
logs.close