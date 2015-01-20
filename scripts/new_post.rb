require 'date'

print "What is the title of your new post? "
title = gets.chomp

now = DateTime.now

new_post = <<EOF
---
layout: post
title: "#{title}"
date: #{now.strftime '%Y-%m-%d %H:%M:%S'}
---

This is a brand new post!
EOF

friendly_title = title.downcase.gsub(/[^a-z ]/, '').gsub(' ', '-')

filepath_relative_to_siteroot = "/_posts/#{now.to_date.to_s}-#{friendly_title}.md"

filepath = File.expand_path("../#{filepath_relative_to_siteroot}")

File.open(filepath, 'w') { |file| file.write new_post }

puts "Created new post at #{filepath_relative_to_siteroot}"
