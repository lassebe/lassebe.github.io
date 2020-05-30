if ARGV.size != 1
	raise "Usage: ruby new_daily.rb <title>; was given #{ARGV}"
end




title = ARGV.first

time = Time.new
date = time.strftime("%Y-%m-%d")
timeOfDay = time.strftime("%H:%M:%S")

filename = "daily/_posts/#{date}-#{title.gsub(" ", "-").downcase}.md"


if File.exists?(filename)
	raise "File already exists!"
end


# TODO: use local timezone
frontmatter = %Q(---
layout: post
title:  "#{title}"
date:   #{date} #{timeOfDay} +0100 
---


)

File.write(filename, frontmatter)

puts "#{filename} created!"