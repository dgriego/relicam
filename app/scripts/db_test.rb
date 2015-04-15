#!/usr/bin/env ruby -w

#
# This program is an example of how to make database queries using ruby.
# You may need to install the appropriate 'mysql2' gem locally.

require 'mysql2'

client = Mysql2::Client.new(host: 'localhost',
                            database: 'relicam',
                            username: 'root')

sql = "INSERT INTO camera_locations (city, state, country, cross_street) " +
      "VALUES ('Hollywood', 'FL', 'USA', 'Sheridan and Park')"

results = client.query(sql);

results = client.query("SELECT * FROM camera_locations")
puts "Records Found: #{results.count}"
results.each do |row|
  # conveniently, row is a hash
  # the keys are the fields, the values are pre-built ruby primitives
  # mapped from their corresponding field types in MySQL
  puts "==> #{row['id']}, #{row['city']}, #{row['state']}, #{row['cross_street']}"
end

puts "==>"
