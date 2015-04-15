#!/usr/bin/env ruby -w

require 'nokogiri'
require 'open-uri'
require 'pry'
require 'mysql2'

client = Mysql2::Client.new(host: 'localhost',
                            database: 'relicam',
                            username: 'root')

#http://www.ecriteria.net/eCriteriaSearchCriteriaAction.asp?DBName=photo&T_e_type=Red&T_e_metro=Florida&T_e_city=&T_e_street1=&btnAction=Search+Database&DBName0=photo
PAGE_URL = "http://mdb.local:81/tmp/redlight_cameras_page.html"

page = Nokogiri::HTML(open(PAGE_URL))


# The columns from the table we are scrapping:
#    State, City / Suburb, Cross Street, Fine, Camera Type, Notes and Map

row_count = 0

page.css('tbody .table3').each do |tbody|
  tbody.css('tr').each do |tr|
    row = {}
    col = 0
    tr.css('td').each do |td|
      break if td.text.upcase == 'STATE'
      row[:state] = td.text if col == 0
      row[:city] = td.text if col == 1
      row[:cross_street] = td.text if col == 2
      col += 1
    end

    if row.size > 0
      # we have data so let's save to a csv file and also the database
      sql = "INSERT INTO camera_locations (city, state, country, cross_street, type) " +
            "VALUES('#{row[:city]}', '#{row[:state]}', 'USA', " +
            "'#{row[:cross_street]}', 'redlight')"
      client.query(sql);
      row_count += 1
    end
  end
end
