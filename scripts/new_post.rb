require 'yaml'

author_yaml = YAML.load_file('../_data/authors.yml')
authors = author_yaml.keys

print "What is your short name? (i.e., first name, all lowercase): "
shortname = gets.chomp

if not authors.include? shortname
  puts "That's not a name I recognize!"
else
  print "What is the title of your new post? "
  title = gets.chomp

  now = DateTime.now

  new_post = <<EOF
---
layout: post
title: "#{title}"
date: #{now.strftime '%Y-%m-%d %H:%M:%S'}
author: #{shortname}
---

This is a brand new post!
EOF

  friendly_title = title.downcase.gsub(/[^a-z ]/, '').gsub(' ', '-')
  
  #This part of the code checks if #{shortname} has a posts folder. If not, It makes one.
  if not File::directory?( "../#{shortname}/_posts" )
    puts "You don't have a _posts folder"
    Dir.mkdir("../#{shortname}/_posts")
    puts "Made _posts directory in #{shortname}"
  end
  
  filepath_relative_to_siteroot = "/#{shortname}/_posts/#{now.to_date.to_s}-#{friendly_title}.md"
  
  filepath = File.expand_path("../#{filepath_relative_to_siteroot}")

  File.open(filepath, 'w') { |file| file.write new_post }

  puts "Created new post at #{filepath_relative_to_siteroot}"

end
